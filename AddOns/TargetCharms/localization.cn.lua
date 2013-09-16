﻿if true or GetLocale() == "zhCN" then
TARGETCHARMS_TITLE = "TargetCharms";

TARGETCHARMS_OPTIONS_TITLE = "TargetCharms选项";
TARGETCHARMS_OPTIONS_LAYOUT_TEXT = "自定义：";
TARGETCHARMS_OPTIONS_DRAG = "可拖动";
TARGETCHARMS_OPTIONS_SHOWONTARGET = "有目标时显示";
TARGETCHARMS_OPTIONS_TOGGLEICON = "再次点击取消标记";
TARGETCHARMS_OPTIONS_SHOWICONS = "显示图标";
TARGETCHARMS_OPTIONS_SCALE = "大小";
TARGETCHARMS_OPTIONS_OPACITY = "透明度";
TARGETCHARMS_OPTIONS_XSPACING = "横向间距";
TARGETCHARMS_OPTIONS_YSPACING = "纵向间距";
TARGETCHARMS_OPTIONS_SHOW_TITLE = "显示：";
TARGETCHARMS_OPTIONS_CLOSE_BUTTON = "关闭";
TARGETCHARMS_OPTIONS_FLARE_MOVE_BUTTON = "移动世界标记";
TARGETCHARMS_OPTIONS_FLARE_LOCK_BUTTON = "锁定世界标记";
TARGETCHARMS_OPTIONS_FLARE_MOVE_TEXT = "世界\n标记"
TARGETCHARMS_OPTIONS_PRESETS_TITLE = "选择布局：";
TARGETCHARMS_OPTIONS_LOAD_BUTTON = "设置布局";
TARGETCHARMS_OPTIONS_READYCHECK_TITLE = "就绪按钮选项";
TARGETCHARMS_OPTIONS_READYCHECK_TEXT = "文本：";
TARGETCHARMS_OPTIONS_FLARE_TITLE = "世界标记选项";
TARGETCHARMS_OPTIONS_WIDTH = "宽度";
TARGETCHARMS_READYCHECK_TEXT = "就绪？";
TARGETCHARMS_MSG_TAG = "TargetCharms：";
TARGETCHARMS_CMD_HELP = "/TargetCharms [Reset|Setup]";
TARGETCHARMS_SLASH1 = "/targetcharms";
TARGETCHARMS_SLASH2 = "/tc";
TARGETCHARMS_LOADED = "已载入";
TARGETCHARMS_ERROR_INVALIDCHAR = "无效字符位置";


--Positions & Charms
TARGETCHARMS_POSITION_UP = "^";
TARGETCHARMS_POSITION_DOWN = "v";
TARGETCHARMS_POSITION_LEFT = "<";
TARGETCHARMS_POSITION_RIGHT = ">";
TARGETCHARMS_CHARM1 = "1";
TARGETCHARMS_CHARM2 = "2";
TARGETCHARMS_CHARM3 = "3";
TARGETCHARMS_CHARM4 = "4";
TARGETCHARMS_CHARM5 = "5";
TARGETCHARMS_CHARM6 = "6";
TARGETCHARMS_CHARM7 = "7";
TARGETCHARMS_CHARM8 = "8";
TARGETCHARMS_CHARM9 = "9"; --Not currently used
TARGETCHARMS_CHARM0 = "0";

TARGETCHARMS_BLUEFLARE = "B";
TARGETCHARMS_GREENFLARE = "G";
TARGETCHARMS_PURPLEFLARE = "P";
TARGETCHARMS_REDFLARE = "R";
TARGETCHARMS_YELLOWFLARE = "Y";
TARGETCHARMS_CLEARFLARE = "X";

--Lower case on CMDs
TargetCharms_CMDS = {"reset", "setup"};

TargetCharms_LayoutDefaults =	{{"标准", ">1>5v6<2v3>7v8<4v_>0"},
				{"倒置",">4>8v7<3v2>6v5<1v_>0"},
				{"水平",">1>2>3>4>5>6>7>8>0"},
				{"垂直",">1v2v3v4v5v6v7v8v0"},
				{"3x3",">1v2v3>6^5^4>7v8v0"}};

Flare_LayoutDefaults =	{{"标准", ">B>RvY<GvP>X"},
				{"3x2",">B>G>PvX<Y<R"},
				{"水平",">B>G>P>R>Y>X"},
				{"垂直",">BvGvPvRvYvX"}};
				
TargetCharms_ShowTypes = {"小队/团队","总是","隐藏"};
end