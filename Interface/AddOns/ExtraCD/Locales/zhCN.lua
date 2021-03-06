﻿local L = LibStub("AceLocale-3.0"):NewLocale("ExtraCD", "zhCN")
if not L then return end

L["General"] = "一般"
L["Load Config"] = "加载配置"
L["Profiles"] = "配置文件"
L["talent"] = "天赋"
L["Scan and show internal cooldown of player's talent."] = "检测并显示玩家天赋的内置冷却"
L["enchant"] = "附魔"
L["Scan and show internal cooldown of player's enchant."] = "检测并显示玩家物品附魔的内置冷却"
L["item"] = "饰品"
L["Scan and show internal cooldown of player's trinket and special weapons."] = "检测并显示玩家饰品和特效武器的内置冷却"
L["item set"] = "套装"
L["Scan and show internal cooldown of player's item set."] = "检测并显示玩家套装的内置冷却"
L["Lock frame"] = "锁定框体"
L["Set the frame locked."] = "设置框体为锁定状态"
L["Combat only"] = "仅战斗中显示"
L["Show the icon only in combat."] = "仅在战斗中显示图标"

L["Show tooltip"] = "显示提示"
L["Show tooltip for the icons."] = "为图标显示鼠标提示"
L["Icons each row"] = "每行数量"
L["Set the icons in each row"] = "设置每行的图标数量"
L["Text font"] = "冷却字体"
L["Set the font of the text"] = "设置冷却文字的字体"
L["Text opacity"] = "文字不透明度"
L["Text size"] = "文字大小"
L["Set the cooldown text size"] = "设置冷却文字的大小"
L["Icon interval"] = "图标间隔"
L["Set the interval size between icons"] = "设置图标之间的距离大小"
L["Icon size"] = "图标大小"
L["Set the icon size"] = "设置图标的大小"
L["Blacklist"] = "黑名单"
L["When you crtl+right click at the icon, it will be disabled. If you want to show it again, enable the spell in the list in advance option. The disabled spells will be at the end of the spell list."] = "当你ctrl+右键点击图标,图标所表示的法术会被禁用. 如果想再次显示,在高级选项的法术列表中启用它.被禁用的法术在列表的最底端."
L["Icon border"] = "图标边框"
L["Set the icon border"] = "设置图标边框的风格"

-- new
L["Advance"] = "高级"
L["Add New CD"] = "添加新冷却"
L["Data"] = "数据"
L["Proc Test"] = "触发测试"

L["Automatically scan and load icds of the types below"] = "自动检测并加载以下类型的内置内却"
L["spec"] = "专精技能"
L["Scan and show internal cooldown of player's specializations."] = "检测并显示玩家专精技能的内置冷却."
L["Add a new custom cd(no limit of being an icd), and manage it by yourself.(marked with '*')"] = "添加一个新的自定义冷却(不局限于内置冷却),可自由管理.(带有标记'*')"
L["Data options provide more customized options for adding new cds and modifying the original cds"] = "数据选项提供更多关于添加新的冷却和修改插件原始数据的选项"
L["To reset all addon original data, your custom data and proc test data will not be changed"] = "重置所有插件原始数据,你的自定义数据和触发测试数据不受影响"
L["Are you sure to reset all addon original data?"] = "确定重置所有插件原始数据?"
L["To delete all custom data, the addon original data and proc test data will not be changed"] = "删除所有自定义数据,插件原始数据和触发测试数据不受影响"
L["To unlock or lock the original data. It's suggested that you should not modify the addon original data, some advance users may need this feature."] = "解锁或锁定原始数据,建议不要更改原始数据,只有高级用户可能需要这项功能."
L["Are you sure to delete all custom data?"] = "确定删除所有自定义数据?"
L["Unlock Original Data"] = "解锁原始数据"
L["Lock Original Data"] = "锁定原始数据"
L["Reset Original Data"] = "重置原始数据"
L["Delete Custom Data"] = "删除自定义数据"
L["Proc test provides the feature of testing coverage of proc and estimating the real icds of the unknown"] = "触发测试提供测试触发特效覆盖率和估算内置冷却的功能"
L["Add a new proc test(no limit of being a proc), and manage it by yourself."] = "添加一个新的触发测试(不局限于触发特效),可自由管理."
L["Add New Proc Test"] = "添加新触发测试"
L["Class"] = "职业"
L["Type"] = "类别"
L["CD"] = "冷却"
L["Duration"] = "持续时间"
L["Spell ID"] = "法术ID"
L["DELETE"] = "删除"
L["already exists."] = "已经存在"
L["Name"] = "名字"
L["spell not exists, id:"] = "法术不存在, id:"
L["Are you sure to delete the data?"] = "确定删除数据?"
L["Glow opacity"] = "闪光不透明度"


-- proc test
L["Minimum interval: "] = "最小触发间隔"
L["Maximum interval: "] = "最大触发间隔"
L["Average interval: "] = "平均触发间隔"
L["Estimated CD: "] = "CD估计值"
L["Total number of test samples: "] = "总样本数"
L["Buff duration"] = "增益持续时间"
L["Combat time"] = "战斗时间"
L["Calculate"] = "计算"
L["Number of times: "] = "触发次数"
L["Total proc duration: "] = "总持续时间"
L["Average coverage: "] = "平均覆盖率"
L["Refresh"] = "刷新"
L["Exact CD"] = "准确CD"
L["In general, no need to set this field. If the exact cd of this spell is already known and does not equal to the estimated cd, add it here to calculate more accurately."] = "通常,没有必要设置这个数值.如果这个法术的准确CD是已知的,但是与CD估计值不符,把它填在此处以使计算更精确."
L["Set this field 0 to calculate the average coverage in infinite time, otherwise calculate the coverage in the specified time"] = "将这个数值设为0,可以计算在无穷大时间内的覆盖率,否则计算指定时间内的覆盖率"
L["Show cooldown"] = "显示冷却"
L["Show cooldown upon the icons."] = "在图标上显示冷却."
L["Show glow"] = "显示闪光"
L["Show glow for the icons."] = "为图标周围添加闪光."
L["Show cooldonw text"] = "显示冷却文字"
L["Show cooldown text for the procs."] = "显示触发特效的冷却时间文字."
L["Glow only at procs"] = "仅特效时闪光"
L["Only show glow during procs, otherwise also show it after cooldown ending."] = "仅在特效触发期间显示闪光,否则在冷却完成时也显示闪光."
L["enchant(ppm)"] = "附魔(ppm)"
L["Scan and show an average cd based on haste * real-ppm of player's enchant with a real-ppm mechanism. "] = "检测玩家存在真实PPM机制的附魔,显示一个基于急速*真实PPM的平均冷却."

--sroting
L["Sorting options provide the feature to sort the order of icons by yourself."] = "排序选项提供自由管理图标顺序的功能."
L["Enable custom sorting"] = "启用自定义排序"
L["Move up"] = "上移"
L["Move down"] = "下移"
L["Sorting"] = "排序"

--rppm
L["RPPM"] = "RPPM"
L["RPPM Options"] = "RPPM选项"
L["Show icons for RPPM"] = "显示RPPM"
L["Show icons for enchants or items with RPPM"] = "为存在RPPM机制的附魔或物品显示图标"
L["Modified rppm"] = "修正后的RPPM"
L["Show rppm modified by player stat and time since last proc(the number is capped by 6 out of combat)"] = "显示一个被玩家属性状态和距上次触发时间修正后的RPPM数值(在战斗外的该数值最大为6)"
L["gem"] = "宝石"
L["Scan and show player's special(legendary) gems"] = "检测并显示玩家的特殊(传说)宝石"

-- WOD new
L["Refreshable"] = "可刷新的"
L["Check this if the buff is refreshable up to 130% normal duration."] = "如果这个buff可以被刷新到通常持续时间的130%,请勾选此项."