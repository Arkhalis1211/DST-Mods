local assets = {
	Asset("ANIM", "anim/wearger_lunar_flame.zip"),
}

local prefabs = {
	"wearger"
}

--

local s = .3

local function Mutated_CreateEyeFlame(ui)
	local inst = CreateEntity()

	--[[Non-networked entity]]
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddFollower()

	if ui then
		inst.entity:AddUITransform()
	end

	inst:AddTag("FX")

	inst.Transform:SetScale(s,s,s)

	inst.AnimState:SetScale(s, s)
	inst.AnimState:SetBank("wearger_lunar_flame")
	inst.AnimState:SetBuild("wearger_lunar_flame")
	inst.AnimState:PlayAnimation("flameanim1", true)
	inst.AnimState:SetMultColour(1, 1, 1, 0.6)
--	inst.AnimState:SetLightOverride(0.1)
	inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
	inst.AnimState:AnimateWhilePaused(true)

	if not ui then
		inst:AddComponent("highlightchild") --(H): highlights when player is highlighted. kinda... pointless since it's already so white but be quiet

		inst.persists = false
	end

	return inst
end

local function FollowFx_OnRemoveEntity(inst)
	for i, v in ipairs(inst.fx) do
		v:Remove()
	end
end

local function FollowFx_ColourChanged(inst, r, g, b, a)
	for i, v in ipairs(inst.fx) do
		v.AnimState:SetAddColour(r, g, b, a)
	end
end

local function SpawnFollowFxForOwner(inst, owner, ui)
	local follow_symbol = "face"
	inst.fx = {}
	for i = 1, 4 do
		local fx = Mutated_CreateEyeFlame(ui)
		fx.entity:SetParent(owner.entity)
		fx.AnimState:SetFrame(math.random(fx.AnimState:GetCurrentAnimationNumFrames()) - 1)
		if not ui then fx.components.highlightchild:SetOwner(owner) end
		fx.AnimState:PlayAnimation("flameanim"..(i % 2), true) --flameanim1 = front, flameanim0 = side
		table.insert(inst.fx, fx)
	end
	inst.fx[1].Follower:FollowSymbol(owner.GUID, follow_symbol, -35, 5, 0, true, nil, 0, 4)
	inst.fx[2].Follower:FollowSymbol(owner.GUID, follow_symbol, -35, 5, 0, true, nil, 4, 8)
	inst.fx[3].Follower:FollowSymbol(owner.GUID, follow_symbol, -35, 5, 0, true, nil, 8, 32)
	inst.fx[4].Follower:FollowSymbol(owner.GUID, follow_symbol, -35, 5, 0, true, nil, 40, 41)
	if not ui then inst.components.colouraddersync:SetColourChangedFn(FollowFx_ColourChanged) end
	inst.OnRemoveEntity = FollowFx_OnRemoveEntity
end

local function AttachToOwner(inst, owner)        
	inst.entity:SetParent(owner.entity)
	if not inst.ui and owner.components.colouradder ~= nil then
		owner.components.colouradder:AttachChild(inst)
	end
	--Dedicated server does not need to spawn the local fx
	if not TheNet:IsDedicated() then
		SpawnFollowFxForOwner(inst, owner, inst.ui)
	end
end

local function OnEntityReplicated(inst)
	local owner = inst.entity:GetParent()
	if owner ~= nil then
		SpawnFollowFxForOwner(inst, owner)
	end
end

local function MakeWeargerLunarFlameFX(name, ui)
	local function fn()
		local inst = CreateEntity()

		inst.entity:AddTransform()

		inst.Transform:SetScale(s, s, s)

		inst:AddTag("FX")

		if ui then
			--(H): YES YOU READ THIS RIGHT, we need both UITransform ***AND*** Transform for the Follower engine component to work properly
			--this hack should probably land me in a mental asylum, i regret nothing.
			inst.entity:AddUITransform()
			inst.entity:CallPrefabConstructionComplete()
			inst.AttachToOwner = AttachToOwner
			inst.ui = true
			return inst --(H): return early if this is the UI prefab, we don't need the rest of everything else
		else
			inst.entity:AddNetwork()
			inst:AddComponent("colouraddersync") --(H): This is to make addcolours apply to the eyes, if this is unwanted behaviour, feel free to remove(and other colour related stuffs).
		end

		inst.entity:SetPristine()

		if not TheWorld.ismastersim then
			inst.OnEntityReplicated = OnEntityReplicated
			return inst
		end

		inst.AttachToOwner = AttachToOwner

		inst.persists = false

		return inst
	end

	return Prefab(name, fn, assets, prefabs)
end

return MakeWeargerLunarFlameFX("wearger_lunar_eyeflame", false),
	--(H): there is something so weird about designing a prefab meant for UI! I don't believe there's anything in the vanilla game like this,
	--but in this specific case it is sensical
	MakeWeargerLunarFlameFX("wearger_lunar_eyeflame_ui", true)