local assets=
{
	Asset("ANIM", "anim/wragonfly_lava_vomit.zip"),
}

local function OnLoad(inst, data)
	inst:Remove()
end

local function GetStatus(inst, viewer)
    if inst.cooled then return "COOL" end
    return "HOT"
end

local function onthrown(inst)
    inst:AddTag("NOCLICK")

    inst.AnimState:PlayAnimation("lava_spin_loop", true)

    inst.Physics:SetMass(1)
    inst.Physics:SetFriction(0)
    inst.Physics:SetDamping(0)
    inst.Physics:SetCollisionGroup(COLLISION.CHARACTERS)
    inst.Physics:ClearCollisionMask()
    inst.Physics:CollidesWith(COLLISION.GROUND)
    inst.Physics:CollidesWith(COLLISION.OBSTACLES)
    inst.Physics:CollidesWith(COLLISION.ITEMS)
end

local function HasFriendlyLeader(inst, target)
    local target_leader = (target.components.follower ~= nil) and target.components.follower.leader or nil
    
    if target_leader ~= nil then

        if target_leader.components.inventoryitem then
            target_leader = target_leader.components.inventoryitem:GetGrandOwner()
        end

        local PVP_enabled = TheNet:GetPVPEnabled()
        return (target_leader ~= nil 
                and (target_leader:HasTag("player") 
                and not PVP_enabled)) or
                (target.components.domesticatable and target.components.domesticatable:IsDomesticated() 
                and not PVP_enabled) or
                (target.components.saltlicker and target.components.saltlicker.salted
                and not PVP_enabled)
    end

    return false
end

local function CanDamage(inst, target)
    if target.components.minigame_participator ~= nil or target.components.combat == nil then
		return false
	end

    if target:HasTag("player") and not TheNet:GetPVPEnabled() then
        return false
    end

    if target:HasTag("playerghost") and not target:HasTag("INLIMBO") then
        return false
    end

    if target:HasTag("monster") and not TheNet:GetPVPEnabled() and 
       ((target.components.follower and target.components.follower.leader ~= nil and 
         target.components.follower.leader:HasTag("player")) or target.bedazzled) then
        return false
    end

    if HasFriendlyLeader(inst, target) then
        return false
    end

    return true
end

local AOE_ATTACK_MUST_TAGS = {"_combat", "_health"}
local AOE_ATTACK_NO_TAGS = {"FX", "NOCLICK", "DECOR", "INLIMBO"}
local function OnThrownHit(inst, target)

	inst.AnimState:PlayAnimation("dump")
    inst.AnimState:PushAnimation("idle_loop")
	inst.SoundEmitter:PlaySound("dontstarve/creatures/together/lavae/land")

	local x, y, z = inst.Transform:GetWorldPosition()
	local ents = TheSim:FindEntities(x, y, z, 3, AOE_ATTACK_MUST_TAGS, AOE_ATTACK_NO_TAGS)

	for i, ent in ipairs(ents) do
	    if CanDamage(inst, ent) then
			ent.components.combat:GetAttacked(inst, 130, nil)
			if ent.components.burnable and math.random() < TUNING.LIGHTER_ATTACK_IGNITE_PERCENT * ent.components.burnable.flammability then
				ent.components.burnable:Ignite(nil, inst)
			end
        end
	end

    inst:RemoveTag("NOCLICK")

end

local INTENSITY = .8

local function fade_in(inst)
    inst.components.fader:StopAll()
    inst.Light:Enable(true)
    inst.components.fader:Fade(0, INTENSITY, 5*FRAMES, function(v) inst.Light:SetIntensity(v) end)
end

local function fade_out(inst)
    inst.components.fader:StopAll()
    inst.components.fader:Fade(INTENSITY, 0, 5*FRAMES, function(v) inst.Light:SetIntensity(v) end, function() inst.Light:Enable(false) end)
end

local function fn(Sim)
	local inst = CreateEntity()
	inst.nameoverride = "lavaspit"

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
    inst.entity:AddLight()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("wragonfly_lava_vomit")
    inst.AnimState:SetBuild("wragonfly_lava_vomit")
    inst.Transform:SetFourFaced()

    inst.entity:AddPhysics()
    inst.Physics:SetMass(1)
    inst.Physics:SetFriction(0)
    inst.Physics:SetDamping(0)
    inst.Physics:SetCollisionGroup(COLLISION.ITEMS)
    inst.Physics:ClearCollisionMask()
    inst.Physics:CollidesWith(COLLISION.GROUND)
    inst.Physics:SetCapsule(0.2, 0.2)

    inst:AddTag("lava")
    --projectile (from complexprojectile component) added to pristine state for optimization
    inst:AddTag("projectile")

    inst.Light:SetFalloff(.5)
    inst.Light:SetIntensity(INTENSITY)
    inst.Light:SetRadius(1)
    inst.Light:Enable(false)
    inst.Light:SetColour(200/255, 100/255, 170/255)

    inst.AnimState:PlayAnimation("dump")
    inst.AnimState:PushAnimation("idle_loop")
    inst.AnimState:SetBloomEffectHandle( "shaders/anim.ksh" )

	inst.entity:SetPristine()
	
	if not TheWorld.ismastersim then
		return inst
	end

    inst:AddComponent("fader")
    fade_in(inst)

    inst:AddComponent("propagator")
    inst.components.propagator.propagaterange = 2
    inst.components.propagator.heatoutput = 3
	inst.components.propagator:StartSpreading()

    inst.cooltask = inst:DoTaskInTime(3, function(inst) 
    	inst.AnimState:PushAnimation("cool", false)
    	fade_out(inst)
        inst:DoTaskInTime(4*FRAMES, function(inst)
            inst.AnimState:ClearBloomEffectHandle()
        end)
    end)
    inst:ListenForEvent("animqueueover", function(inst)
   		inst.AnimState:SetPercent("cool", 1)
        if inst.components.propagator then 
            inst.components.propagator:StopSpreading()
            inst:RemoveComponent("propagator") 
        end
        inst.cooled = true
        inst:AddComponent("colourtweener")
        inst.components.colourtweener:StartTween({0,0,0,0}, 7, function(inst) inst:Remove() end)
    end)

    inst:AddComponent("inspectable")
    inst.components.inspectable.getstatus = GetStatus

    inst.cooled = false

	inst.persists = false

	inst:AddComponent("complexprojectile")
    inst.components.complexprojectile:SetHorizontalSpeed(20)
    inst.components.complexprojectile:SetGravity(-35)
    inst.components.complexprojectile:SetLaunchOffset(Vector3(.25, 0, 0))
    inst.components.complexprojectile:SetOnLaunch(onthrown)
    inst.components.complexprojectile:SetOnHit(OnThrownHit)
	inst.components.complexprojectile.usehigharc = false

    inst.OnLoad = OnLoad

    return inst
end

return Prefab( "wragonfly_lavaspit", fn, assets)