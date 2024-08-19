GLOBAL.setmetatable(env, {
  __index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end
})
modimport("apis.lua")
utils.prefab("wurt", function(inst)
  if inst.components.eater ~= nil then
    inst.components.eater:SetDiet({FOODGROUP.OMNI}, {FOODGROUP.OMNI})
  end
  if inst.components.combat ~= nil then
    inst.components.combat.damagemultiplier = TUNING.WATHGRITHR_DAMAGE_MULT
  end
  -- temp
  if inst.components.temperature ~= nil then
    local t = inst.components.temperature
    local GetMoisturePenalty = t.GetMoisturePenalty
    function t:GetMoisturePenalty()
      local old = GetMoisturePenalty(t)
      local world_temp = TheWorld.state.temperature
      -- cannot be lower than -world_temp, so 0 is the lowest
      if world_temp + old < 0 then
        return -math.max(0, world_temp)
      else
        return old
      end
    end
  end
end)
TUNING.MERM_KING_HUNGER_RATE = 0
utils.prefab("mermking", function(inst)
  if inst.components.hunger ~= nil then
    inst.components.hunger:SetRate(0)
    inst:DoTaskInTime(0, function() inst.components.hunger:SetPercent(1) end)
  end
end)
utils.prefab("pigking", function(inst)
  local t = inst.components.trader
  if t ~= nil then
    local accept = t.test
    local function AcceptTest(inst, item, giver)
      if giver.prefab == "wurt" then
        local HasTag = giver.HasTag
        function giver:HasTag(tag)
          if tag == "merm" then return false end
          return HasTag(giver, tag)
        end
        local ret = accept(inst, item, giver)
        giver.HasTag = HasTag
        return ret
      end
      return accept(inst, item, giver)
    end
    inst.components.trader:SetAcceptTest(AcceptTest)
  end
end)
local CanTarget = nil
local function Wurt_CanTarget(self, target)
  if target.prefab == "wurt" and target ~= self.target and
    not self.inst:HasTag("werepig") and not self.inst:HasTag("guard") then
    return false
  end
  local CanTarget = CanTarget
  return self.Wurt_Old_CanTarget(self, target)
end
local function pig(inst)
  local c = inst.components.combat
  if c ~= nil then
    local TryRetarget = c.TryRetarget
    function c:TryRetarget()
      local Old_CanTarget = self.CanTarget
      CanTarget = Old_CanTarget
      self.Wurt_Old_CanTarget = Old_CanTarget
      self.CanTarget = Wurt_CanTarget
      local ret = TryRetarget(c)
      self.CanTarget = Old_CanTarget
      return ret
    end
  end
end
utils.prefab("pigman", pig)
local function CancelLoyaltyTime(inst)
  inst.components.follower:CancelLoyaltyTask()
end
local function PrepareInfiniteLoyalty(inst, merm)
  local leader = inst.merm_caller
  if leader then
    local l = leader.components.leader
    if l then
      local AddFollower = l.AddFollower
      l.Wurt_AddFollower = AddFollower
      function l:AddFollower(follower)
        AddFollower(self, follower)
        if self.followers[follower] then
          follower:DoTaskInTime(0, CancelLoyaltyTime)
        end
      end
    end
  end
end
local function InfiniteLoyalty(inst, merm)
  local leader = inst.merm_caller
  if leader then
    local l = leader.components.leader
    if l and l.Wurt_AddFollower then
      l.AddFollower = l.Wurt_AddFollower
      l.Wurt_AddFollower = nil
    end
  end
end
local function kelppot(inst)
  local AnswerCall = inst.AnswerCall
  if AnswerCall then
    inst.AnswerCall = function(...)
      PrepareInfiniteLoyalty(...)
      AnswerCall(...)
      InfiniteLoyalty(...)
    end
  end
end
utils.prefabs({"offering_pot", "offering_pot_upgraded"}, kelppot)