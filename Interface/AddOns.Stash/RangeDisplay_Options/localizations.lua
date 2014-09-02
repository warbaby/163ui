local AppName = ...
local AL = LibStub("AceLocale-3.0")
local L = AL:NewLocale(AppName, "enUS", true)

L["The text to display when you are further than range limit"] = "The text to display when you are further than range limit\n(%d is the min range value)"
L["The text to display for this section"] = "The text to display for this section\n(%d, %d is min, max range)"
L["Anchor to Mouse"] = "Anchor to Mouse"
L["Auto hide"] = "Auto hide"
L["Background Color"] = "Background Color"
L["Background Options"] = "Background Options"
L["Background Texture"] = "Background Texture"
L["Background Tile Size"] = "Background Tile Size"
L["Border Color"] = "Border Color"
L["Border Texture"] = "Border Texture"
L["Border Thickness"] = "Border Thickness"
L["Close range section"] = "Close range section"
L["Color"] = "Color"
L["Copy section settings to other units"] = "Copy section settings to other units"
L["Default section"] = "Default section"
L["Enabled"] = "Enabled"
L["Enable this color section"] = "Enable this color section"
L["Enemy only"] = "Enemy only"
L["Enemy only sound"] = "Enemy only sound"
L["Font"] = "Font"
L["Font outline"] = "Font outline"
L["Font size"] = "Font size"
L["Frame's background color"] = "Frame's background color"
L["Frame's border color"] = "Frame's border color"
L["Frame strata"] = "Frame strata"
L["Height"] = "Height"
L["Hide the background if the range display is not active"] = "Hide the background if the range display is not active"
L["High"] = "High"
L["Locked"] = "Locked"
L["Lock/Unlock display frame"] = "Lock/Unlock display frame"
L["Long range section"] = "Long range section"
L["Low"] = "Low"
L["Reverse"] = "Reverse"
L["Medium"] = "Medium"
L["Medium range section"] = "Medium range section"
L["Mute"] = "Mute"
L["None"] = "None"
L["Normal"] = "Normal"
L["Out of range section"] = "Out of range section"
L["Over limit display"] = "Over limit display"
L["Over limit text"] = "Over limit text"
L["Play a sound when entering this range"] = "Play a sound when entering this range"
L["Range limit"] = "Range limit"
L["Ranges above this are not reported"] = "Ranges above this are not reported"
L["Short range section"] = "Short range section"
L["Show/Hide display if the target is further than range limit"] = "Show/Hide display if the target is further than range limit"
L["Show range for enemy targets only"] = "Show range for enemy targets only"
L["Show max-min instead of min-max"] = "Show max-min instead of min-max"
L["Strata"] = "Strata"
L["Text"] = "Text"
L["Texture to use for the frame's background"] = "Texture to use for the frame's background"
L["Texture to use for the frame's border"] = "Texture to use for the frame's border"
L["The size used to tile the background texture"] = "The size used to tile the background texture"
L["The thickness of the border"] = "The thickness of the border"
L["Thick"] = "Thick"
L["Tile Background"] = "Tile Background"
L["Tile the background texture"] = "Tile the background texture"
L["Toggle sound"] = "Toggle sound"
L["Use Section Colors"] = "Use Section Colors"
L["Use section colors for background and background color for text"] = "Use section colors for background and background color for text"
L["Use warning sound for enemy targets only"] = "Use warning sound for enemy targets only"
L["Warning Sound"] = "Warning Sound"
L["Warning Sound Name"] = "Warning Sound Name"
L["Width"] = "Width"

-----------------------------------------------------------------------------

L = AL:NewLocale(AppName, "zhCN")
if L then
L["Anchor to Mouse"] = "锚点定位到鼠标"
L["Auto hide"] = "自动隐藏"
L["Background Color"] = "背景颜色"
L["Background Options"] = "背景选项"
L["Background Texture"] = "背景材质"
L["Background Tile Size"] = "背景网格尺寸"
L["Border Color"] = "边框颜色"
L["Border Texture"] = "边框材质"
L["Border Thickness"] = "边框厚度"
L["Close range section"] = "近距离项"
L["Color"] = "颜色"
L["Copy section settings to other units"] = "复制分段设置到其他单位"
L["Default section"] = "默认项"
L["Enabled"] = "开启"
L["Enable this color section"] = "开启此色彩项目"
L["Enemy only"] = "仅敌对"
L["Enemy only sound"] = "敌对报警音" -- Needs review
L["Font"] = "字体"
L["Font outline"] = "字体描边"
L["Font size"] = "字号"
L["Frame's background color"] = "框架背景颜色"
L["Frame's border color"] = "框架边框颜色"
L["Frame strata"] = "框架显示层面"
L["Height"] = "高度"
L["Hide the background if the range display is not active"] = "如果距离显示没有被激活则隐藏背景"
L["High"] = "最高层"
L["Locked"] = "锁定"
L["Lock/Unlock display frame"] = "锁定或解锁显示框"
L["Long range section"] = "远距离项"
L["Low"] = "最低层"
L["Medium"] = "中间层"
L["Medium range section"] = "中距离项"
L["Mute"] = "静音" -- Needs review
L["None"] = "无"
L["Normal"] = "正常"
L["Out of range section"] = "超出距离项"
L["Over limit display"] = "超出距离显示"
L["Over limit text"] = "超过限制文字" -- Needs review
L["Play a sound when entering this range"] = "当进入这个距离范围时播放一个音效"
L["Range limit"] = "距离限制"
L["Ranges above this are not reported"] = "不提醒超出此数值的距离"
L["Reverse"] = "相反" -- Needs review
L["Short range section"] = "短距离项"
L["Show/Hide display if the target is further than range limit"] = "在目标超出距离时显示/隐藏距离框体"
L["Show max-min instead of min-max"] = "显示最大-最小替换最小-最大" -- Needs review
L["Show range for enemy targets only"] = "仅显示敌对目标的距离"
L["Strata"] = "层级"
L["Text"] = "文字"
L["Texture to use for the frame's background"] = "框架背景的材质"
L["Texture to use for the frame's border"] = "框架边框的材质"
L["The size used to tile the background texture"] = "网格背景尺寸"
L["The text to display for this section"] = "显示此项的文字" -- Needs review
L["The text to display when you are further than range limit"] = "显示当你超过距离限制的文字" -- Needs review
L["The thickness of the border"] = "设置边框厚度"
L["Thick"] = "加粗"
L["Tile Background"] = "网格背景"
L["Tile the background texture"] = "网格背景材质"
L["Toggle sound"] = "开启/关闭音效"
L["Use Section Colors"] = "使用分段颜色"
L["Use section colors for background and background color for text"] = "使用该颜色作为背景与背景文字的颜色" -- Needs review
L["Use warning sound for enemy targets only"] = "仅对敌对目标使用警告声" -- Needs review
L["Warning Sound"] = "报警音效"
L["Warning Sound Name"] = "报警音效名字"
L["Width"] = "宽度"

end

L = AL:NewLocale(AppName, "zhTW")
if L then
L["Anchor to Mouse"] = "錨點至滑鼠"
L["Auto hide"] = "自動隱藏"
L["Background Color"] = "背景顏色"
L["Background Options"] = "背景選項"
L["Background Texture"] = "背景材質"
L["Background Tile Size"] = "背景網格尺寸"
L["Border Color"] = "邊框顏色"
L["Border Texture"] = "邊框材質"
L["Border Thickness"] = "邊框厚度"
L["Close range section"] = "近距離項"
L["Color"] = "顏色"
L["Copy section settings to other units"] = "複製這段的設定到其他單位"
L["Default section"] = "默認項"
L["Enabled"] = "開啟"
L["Enable this color section"] = "開啟此色彩項目"
L["Enemy only"] = "僅敵對"
L["Enemy only sound"] = "敵人唯聲音"
L["Font"] = "字體"
L["Font outline"] = "字體描邊"
L["Font size"] = "字型大小"
L["Frame's background color"] = "框架背景顏色"
L["Frame's border color"] = "框架邊框顏色"
L["Frame strata"] = "框架顯示層面"
L["Height"] = "高度"
L["Hide the background if the range display is not active"] = "如果距離檢測沒有使用自動隱藏背景"
L["High"] = "最高層"
L["Locked"] = "鎖定"
L["Lock/Unlock display frame"] = "鎖定或解鎖顯示框"
L["Long range section"] = "長距離選擇"
L["Low"] = "最低層"
L["Medium"] = "中間層"
L["Medium range section"] = "中距離項"
L["Mute"] = "靜音"
L["None"] = "無"
L["Normal"] = "正常"
L["Out of range section"] = "超出距離項"
L["Over limit display"] = "超出距離顯示"
L["Over limit text"] = "超過限制文字"
L["Play a sound when entering this range"] = "當進入範圍時播放聲音"
L["Range limit"] = "距離限制"
L["Ranges above this are not reported"] = "不提醒超出此數值的距離"
L["Reverse"] = "相反"
L["Short range section"] = "短距離項"
L["Show/Hide display if the target is further than range limit"] = "在目標超出距離時顯示/隱藏距離框體"
L["Show max-min instead of min-max"] = "顯示最大-最小更換最小-最大"
L["Show range for enemy targets only"] = "僅顯示敵對目標的距離"
L["Strata"] = "層級"
L["Text"] = "文字"
L["Texture to use for the frame's background"] = "框架背景的材質"
L["Texture to use for the frame's border"] = "框架邊框的材質"
L["The size used to tile the background texture"] = "網格背景尺寸"
L["The text to display for this section"] = [=[顯示此項的文字
(%d, %d 為 最小, 最大距離)]=]
L["The text to display when you are further than range limit"] = [=[顯示當你超過距離限制的文字
(%d 為最小距離值)]=]
L["The thickness of the border"] = "設置邊框厚度"
L["Thick"] = "加粗"
L["Tile Background"] = "網格背景"
L["Tile the background texture"] = "網格背景材質"
L["Toggle sound"] = "切換聲望"
L["Use Section Colors"] = "使用選擇顏色"
L["Use section colors for background and background color for text"] = "使用這項的顏色當作背景與背景文本的顏色"
L["Use warning sound for enemy targets only"] = "只在敵對目標使用警告聲"
L["Warning Sound"] = "警告聲音"
L["Warning Sound Name"] = "警告聲音名稱"
L["Width"] = "寬度"

end

