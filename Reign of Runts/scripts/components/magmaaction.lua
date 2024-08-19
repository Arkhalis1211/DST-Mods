local WragonflySummoner = Class(function(self,inst)
	self.inst = inst
end)

local function NoHoles(pt)
    return not TheWorld.Map:IsPointNearHole(pt)
end

function WragonflySummoner:Summon(doer)
    local theta = math.random() * 2 * PI
    local pt = self.inst:GetPosition()
    local offset = FindWalkableOffset(pt, theta, 1, 1, true, true, NoHoles)
    if offset ~= nil then
        pt.x = pt.x + offset.x
        pt.z = pt.z + offset.z
    end

    if doer ~= nil and doer.components.petleash ~= nil and not doer.components.petleash:IsFull() then
		doer.components.petleash:SpawnPetAt(pt.x, 0, pt.z, "lavae_wragonfly")
	end

	local summonfx = SpawnPrefab("firesplash_fx")
	summonfx.Transform:SetScale(.5, .5, .5)
	summonfx.Transform:SetPosition(pt.x, 0, pt.z)

    doer.AnimState:PlayAnimation("sing_fail")
end

return WragonflySummoner