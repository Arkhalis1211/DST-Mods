GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end})

require("map/network")
require("util")

local GetRoomByName = require("map/rooms").GetRoomByName
local GetTaskByName = require("map/tasks").GetTaskByName

AddGlobalClassPostConstruct("map/storygen", "Story", function(self, id, tasks, terrain, gen_params, level)

    -- 定义任务节点
    local function CreateCustomTask(name, task_data)
        return {
            id = name,
            locks = task_data.locks,
            keys_given = task_data.keys_given,
            room_choices = task_data.room_choices,
            room_bg = task_data.room_bg,
            background_room = task_data.background_room,
            colour = task_data.colour,
        }
    end

    -- 定义解锁和任务
    local function DefineTasks()
        local tasks = {}

        -- 区域1：起始区域
        tasks.start_area = CreateCustomTask("Start Area", {
            locks = {},
            keys_given = {"rocks", "twigs", "grass"},
            room_choices = {
                ["Rocky"] = 1, -- 添加石头资源
                ["Forest"] = 1, -- 添加树枝/草资源
            },
            room_bg = GROUND.ROCKY,
            background_room = "BGRocky",
            colour = {r = 0.3, g = 0.1, b = 0.1, a = 1},
        })

        -- 区域2：猪村
        tasks.pig_village = CreateCustomTask("Pig Village", {
            locks = {"meat"},
            keys_given = {"pigfriendship"},
            room_choices = {
                ["PigVillage"] = 1, -- 添加猪村
                ["Forest"] = 1, -- 添加胡萝卜和兔子作为肉类来源
            },
            room_bg = GROUND.GRASS,
            background_room = "BGGrass",
            colour = {r = 0.1, g = 0.5, b = 0.1, a = 1},
        })

        -- 区域3：蜘蛛巢
        tasks.spider_dens = CreateCustomTask("Spider Dens", {
            locks = {"pigfriendship"},
            keys_given = {"none"},
            room_choices = {
                ["SpiderForest"] = 1, -- 添加蜘蛛巢
            },
            room_bg = GROUND.FOREST,
            background_room = "BGForest",
            colour = {r = 0.5, g = 0.0, b = 0.0, a = 1},
        })

        return tasks
    end

    -- 自定义节点连接函数
    local function LinkCustomNodes(self, startParentNode, tasks)
        local lastNode = startParentNode
        local usedTasks = {}
        local unusedTasks = tasks

        -- 连接任务节点
        for task_name, task in pairs(unusedTasks) do
            local currentNode = self.rootNode:AddChild(task)
            -- 将当前任务连接到上一个任务节点
            self.rootNode:LinkNodes(lastNode.id, currentNode.id, task.locks, {type = "none", key = task.keys_given})
            usedTasks[task_name] = currentNode
            lastNode = currentNode
        end

        -- 循环连接任务节点，使任务彼此连接成一个链
        local firstTask = usedTasks["start_area"]
        self.rootNode:LinkNodes(lastNode.id, firstTask.id, {}, {type = "none", key = {}})

        return firstTask
    end

    -- 重写Story类的LinkNodesByKeys函数
    self.LinkNodesByKeys = function(self, startParentNode, unusedTasks)
        -- 获取定义的任务
        local tasks = DefineTasks()

        -- 调用自定义的节点连接函数
        return LinkCustomNodes(self, startParentNode, tasks)
    end
end)
