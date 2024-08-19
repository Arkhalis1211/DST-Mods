name = "沃特修改"
description = [[1 可以吃肉
2 攻击倍率和女武神一样
3 能和猪王交易和猪人中立
4 鱼人王不会饿死
5 海带食堂永久雇佣鱼人
6 潮湿不会过冷
]]
author = "zzzzzzzs"
forumthread = ""
priority = 0
api_version = 6
api_version_dst = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false
hamlet_compatible = false
all_clients_require_mod = true
icon_atlas = "modicon.xml"
icon = "modicon.tex"
server_filter_tags = {}
version = "20240724"
local configuration = {}

translation = {
  {
    matchLanguage = function(lang)
      return lang == "zh" or lang == "zht" or lang == "zhr" or lang == "chs" or
               lang == "cht"
    end,
    translateFunction = function(key) return translation[1].dict[key] or nil end,
    dict = {
      name = name,
      language = "语言",
      author = author,
      unusable = "不可用",
      description = description,
      version = "",
      ["Accord to the game"] = "跟随游戏设置",
      ["Set Language"] = "设置语言",
      Keybinds = "按键绑定",
      No = "否",
      Yes = "是",
      Default = "默认",
      Client = "客户端",
      debug = "开启调试",
      default = "默认"
    }
  }, {
    matchLanguage = function(lang) return lang == "en" end,
    dict = {
      name = name,
      description = description,
      version = [[]],
      author = author
    },
    translateFunction = function(key) return translation[2].dict[key] or key end
  }
}
local function makeConfigurations(conf, translate, baseTranslate, language)
  local index = 0
  local config = {}
  local function trans(str) return translate(str) or baseTranslate(str) end

  local string = ""
  for i = 1, #conf do
    local v = conf[i]
    if not v.disabled then
      index = index + 1
      config[index] = {
        name = v.name or "",
        label = v.name ~= "" and translate(v.name) or
          (v.label and trans(v.label)) or baseTranslate(v.name) or nil,
        hover = v.name ~= "" and (v.hover and trans(v.hover)) or nil,
        default = v.default,
        options = v.name ~= "" and {{description = "", data = ""}} or nil,
        client = v.client
      }
      if v.unusable then
        config[index].label = config[index].label .. "[" .. trans("unusable") ..
                                "]"
      end
      if v.key then
        if language == "zh" then
          config[index].options = input_table_zh
        else
          config[index].options = input_table_en
        end
        config[index].iskey = true
        config[index].default = config[index].default or 0
      elseif v.options then
        for j = 1, #v.options do
          local opt = v.options[j]
          config[index].options[j] = {
            description = opt.description and trans(opt.description) or "",
            hover = opt.hover and trans(opt.hover) or "",
            data = opt.data
          }
        end
      end
    end
  end
  configuration_options = config
end

local function makeInfo(translation)
  local localName = translation("name")
  local localDescription = translation("description")
  local localVersionInfo = translation("version") or ""
  local localAuthor = translation("author")
  if localVersionInfo ~= "" then
    if not localDescription then localDescription = "" end
    localDescription = localVersionInfo .. "\n" .. localDescription
  end
  if localName then name = localName end
  if localAuthor then author = localAuthor end
  if localDescription then description = localDescription end
end

local function getLang()
  local lang = locale or "en"
  return lang
end

local function generate()
  local lang = getLang()
  local localTranslation = translation[#translation].translateFunction
  local baseTranslation = translation[#translation].translateFunction
  for i = 1, #translation - 1 do
    local v = translation[i]
    if v.matchLanguage(lang) then
      localTranslation = v.translateFunction
      break
    end
  end
  makeInfo(localTranslation)
  makeConfigurations(configuration, localTranslation, baseTranslation, lang)
end
generate()
