local _, TS = ...

--定义要显示的成就
--[[
    {
        tab = "test",
        bosses = {1017,621,13},
        idName = {
            [1017] = "养他",
            [621] = "战袍",
            [13] = "80级",
        },
    },
    {
        tab = "ULD(10)",
        bosses = {2860,2861,2868,2862,2863,2864,2865,2866,2869,2867},
        idName = {
            [2860] = "议会",
            [2861] = "左右手",
            [2868] = "猫女",
            [2862] = "霍迪尔",
            [2863] = "托里姆",
            [2864] = "弗蕾亚",
            [2865] = "米米隆",
            [2866] = "将军",
            [2869] = "尤格",
            [2867] = "观察者",
        },
    },
    {
        tab = "ULD(25)",
        bosses = {2885,2875,2882,3256,3257,3258,2879,2880,2883,2881},
        idName = {
            [2885] = "议会",
            [2875] = "左右手",
            [2882] = "猫女",
            [3256] = "霍迪尔",
            [3257] = "托里姆",
            [3258] = "弗蕾亚",
            [2879] = "米米隆",
            [2880] = "将军",
            [2883] = "尤格",
            [2881] = "观察者",
        },
    },
]]
--{
--        tab = "TOC(10)",
--        id = "TOC",
--        man = 10,
--        difficult = "N",
--        bosses = {4028,4032,4036,4040,4044},
--        idName = {
--            [4028] = "老一",
--            [4032] = "老二",
--            [4036] = "PVP",
--            [4040] = "双子",
--            [4044] = "老五",
--        },
--    },
--    {
--        tab = "TOC(10H)",
--        bosses = {4030,4033,4037,4041,4045},
--        idName = {
--            [4030] = "老一",
--            [4033] = "老二",
--            [4037] = "PVP",
--            [4041] = "双子",
--            [4045] = "老五",
--        },
--    },
--    {
--        tab = "TOC(25)",
--        bosses = {4031,4034,4038,4042,4046},
--        idName = {
--            [4031] = "老一",
--            [4034] = "老二",
--            [4038] = "PVP",
--            [4042] = "双子",
--            [4046] = "老五",
--        },
--    },
--    {
--        tab = "TOC(25H)",
--        bosses = {4029,4035,4039,4043,4047},
--        idName = {
--            [4029] = "老一",
--            [4035] = "老二",
--            [4039] = "PVP",
--            [4043] = "双子",
--            [4047] = "老五",
--        },
--    },
--    {
--        tab = "ICC(10)",
--        bosses = {4639,4643,4644,4645,    4646,4647,4650,    4648,4651,    4649,4652,    4653,   4821},
--        idName = {
--            [4639] = "老一",
--            [4643] = "老二",
--            [4644] = "炮艇",
--            [4645] = "小萨",
--            [4646] = "烂肠",
--            [4647] = "腐脸",
--            [4650] = "教授",
--            [4648] = "议会",
--            [4651] = "女王",
--            [4649] = "绿龙",
--            [4652] = "冰龙",
--            [4653] = "小阿",
--            [4821] = "晶红龙",
--        },
--    },
--    {
--        tab = "ICC(10H)",
--        bosses = {4640,4654,4659,4662,    4665,4668,4677,    4671,4680,    4674,4684,    4686,   4822},
--        idName = {
--            [4640] = "老一",
--            [4654] = "老二",
--            [4659] = "炮艇",
--            [4662] = "小萨",
--            [4665] = "烂肠",
--            [4668] = "腐脸",
--            [4677] = "教授",
--            [4671] = "议会",
--            [4680] = "女王",
--            [4674] = "绿龙",
--            [4684] = "冰龙",
--            [4686] = "小阿",
--            [4822] = "晶红龙",
--        },
--    },
--    {
--        tab = "ICC(25)",
--        bosses = {4641,4655,4660,4663,    4666,4669,4678,    4672,4681,    4675,4683,    4687,   4820},
--        idName = {
--            [4641] = "老一",
--            [4655] = "老二",
--            [4660] = "炮艇",
--            [4663] = "小萨",
--            [4666] = "烂肠",
--            [4669] = "腐脸",
--            [4678] = "教授",
--            [4672] = "议会",
--            [4681] = "女王",
--            [4675] = "绿龙",
--            [4683] = "冰龙",
--            [4687] = "小阿",
--            [4820] = "晶红龙",
--        },
--    },
--    {
--        tab = "ICC(25H)",
--        bosses = {4642,4656,4661,4664,    4667,4670,4679,    4673,4682,    4676,4685,    4688,   4823},
--        idName = {
--            [4642] = "老一",
--            [4656] = "老二",
--            [4661] = "炮艇",
--            [4664] = "小萨",
--            [4667] = "烂肠",
--            [4670] = "腐脸",
--            [4679] = "教授",
--            [4673] = "议会",
--            [4682] = "女王",
--            [4676] = "绿龙",
--            [4685] = "冰龙",
--            [4688] = "小阿",
--            [4823] = "晶红龙",
--        },
--    },
--}

-- TS.TABS = {
--     {
--         tab = '新五人副本',
--         idName = {
--             [6150] = "姆诺兹多（时光之末）",
--             [6151] = "玛诺洛斯（永恒之井）",
--             [6152] = "大主教本尼迪塔斯（暮光审判）",
--         }
--     },

--     {
--         tab = '火焰之地',
--         idName = {
--             [5964] =  '贝丝缇拉克',
--             [5966] =  '雷奥利斯',
--             [5968] =  '沙恩诺克斯',
--             [5970] =  '奥利瑟拉佐尔',
--             [5972] =  '贝尔洛克',
--             [5974] =  '鹿盔',
--             [5976] =  '拉格纳罗斯',
--         },
--     },

--     {
--         tab = '火焰之地(H)',
--         idName = {
--             [5965] =  '贝丝缇拉克',
--             [5967] =  '雷奥利斯',
--             [5969] =  '沙恩诺克斯',
--             [5971] =  '奥利瑟拉佐尔',
--             [5973] =  '贝尔洛克',
--             [5975] =  '鹿盔',
--             [5977] =  '拉格纳罗斯',
--         },
--     },

--     {
--         tab = '风神王座',
--         bosses = {5575, 5576, 5574, 5577},
--         idName = {
--             [5575] = "议会",
--             [5576] = "奥垃圾",
--             [5574] = "(H)议会",
--             [5577] = "(H)奥拉基尔",
--         },
--     },

--     {
--         tab = '暮光堡垒',
--         idName = {
--             [5554] = "哈尔弗斯·碎龙者",
--             [5567] = "瓦里昂娜与瑟纳利昂",
--             [5569] = "升腾者议会",
--             [5572] = "古加尔",
--         },
--     },

--     {
--         tab = '暮光堡垒(H)',
--         idName = {
--             [5553] = "哈尔弗斯·碎龙者",
--             [5568] = "瓦里昂娜与瑟纳利昂",
--             [5570] = "升腾者议会",
--             [5571] = "古加尔",
--             [5573] = "希奈丝特拉",
--         },
--     },

--     {
--         tab = '黑翼血环',
--         idName = {
--             [5555] = "熔喉",
--             [5557] = "全能金刚",
--             [5559] = "马洛拉克",
--             [5561] = "艾卓曼德斯",
--             [5564] = "奇美隆",
--             [5565] = "奈法",
--         },
--     },

--     {
--         tab = '黑翼血环(H)',
--         idName = {
--             [5556] = "熔喉",
--             [5558] = "全能金刚",
--             [5560] = "马洛拉克",
--             [5562] = "艾卓曼德斯",
--             [5563] = "奇美隆",
--             [5566] = "奈法",
--         },
--     },

--     {
--         tab = '巨龙之魂',
--         idName = {
--             [6153] = "莫卓克",
--             [6155] = "督军佐诺兹",
--             [6157] = "不眠的约萨希",
--             [6159] = "缚风者哈格拉",
--             [6161] = "奥卓克希昂",
--             [6163] = "战争大师黑角",
--             [6165] = "背脊之战",
--             [6167] = "杀死死亡之翼",
--         },
--     },

--     {
--         tab = '巨龙之魂(H)',
--         idName = {
--             [6154] = "莫卓克",
--             [6156] = "督军佐诺兹",
--             [6158] = "不眠的约萨希",
--             [6160] = "缚风者哈格拉",
--             [6162] = "奥卓克希昂",
--             [6164] = "战争大师黑角",
--             [6166] = "背脊之战",
--             [6168] = "杀死死亡之翼",
--         },
--     },
-- }

--[[TS.TABS = {
    {
        idName = {
            [6801] = "皇家宰相佐尔洛克",
            [6803] = "刀锋领主塔亚克",
            [6805] = "加拉隆",
            [6807] = "风领主梅尔加拉克",
            [6809] = "琥珀塑形者昂舒克",
            [6811] = "大女皇夏柯希尔",
        },
        tab = "恐惧之心(10)",
    },
    {
        idName = {
            [6802] = "皇家宰相佐尔洛克",
            [6804] = "刀锋领主塔亚克",
            [6806] = "加拉隆",
            [6808] = "风领主梅尔加拉克",
            [6810] = "琥珀塑形者昂舒克",
            [6812] = "大女皇夏柯希尔",
        },
        tab = "恐惧之心(10H)",
    },
    {
        idName = {
            [7951] = "皇家宰相佐尔洛克",
            [7954] = "刀锋领主塔亚克",
            [7956] = "加拉隆",
            [7958] = "风领主梅尔加拉克",
            [7961] = "琥珀塑形者昂舒克",
            [7963] = "大女皇夏柯希尔",
        },
        tab = "恐惧之心(25)",
    },
    {
        idName = {
            [7953] = "皇家宰相佐尔洛克",
            [7955] = "刀锋领主塔亚克",
            [7957] = "加拉隆",
            [7960] = "风领主梅尔加拉克",
            [7962] = "琥珀塑形者昂舒克",
            [7964] = "大女皇夏柯希尔",
        },
        tab = "恐惧之心(25H)",
    },
    {
        idName = {
            [6991] = "皇家宰相佐尔洛克",
            [6992] = "刀锋领主塔亚克",
            [6993] = "加拉隆",
            [6994] = "风领主梅尔加拉克",
            [6995] = "琥珀塑形者昂舒克",
            [6996] = "大女皇夏柯希尔",
        },
        tab = "恐惧之心(随机)",
    },
    {
        idName = { [6813] = "无尽守护者", [6815] = "解救烛龙", [6817] = "解救雷施", [6819] = "惧之煞", },
        tab = "永春台(10)",
    },
    {
        idName = { [6814] = "无尽守护者", [6816] = "解救烛龙", [6818] = "解救雷施", [6820] = "惧之煞", },
        tab = "永春台(10H)",
    },
    {
        idName = { [7965] = "无尽守护者", [7967] = "解救烛龙", [7969] = "解救雷施", [7971] = "惧之煞", },
        tab = "永春台(25)",
    },
    {
        idName = { [7966] = "无尽守护者", [7968] = "解救烛龙", [7970] = "解救雷施", [7972] = "惧之煞", },
        tab = "永春台(25H)",
    },
    {
        idName = { [6997] = "无尽守护者", [6998] = "解救烛龙", [6999] = "解救雷施", [7000] = "惧之煞", },
        tab = "永春台(随机)",
    },
    {
        idName = {
            [6789] = "石头守卫",
            [6791] = "受诅者魔封",
            [6793] = "缚灵者戈拉亚 ",
            [6795] = "四王",
            [6797] = "伊拉贡",
            [6799] = "皇帝的意志",
        },
        tab = "魔古山宝库(10)",
    },
    {
        idName = {
            [6790] = "石头守卫",
            [6792] = "受诅者魔封",
            [6794] = "缚灵者戈拉亚 ",
            [6796] = "四王",
            [6798] = "伊拉贡",
            [6800] = "皇帝的意志",
        },
        tab = "魔古山宝库(10H)",
    },
    {
        idName = {
            [7914] = "石头守卫",
            [7917] = "受诅者魔封",
            [7919] = "缚灵者戈拉亚 ",
            [7921] = "四王",
            [7923] = "伊拉贡",
            [7926] = "皇帝的意志",
        },
        tab = "魔古山宝库(25)",
    },
    {
        idName = {
            [7915] = "石头守卫",
            [7918] = "受诅者魔封",
            [7920] = "缚灵者戈拉亚 ",
            [7922] = "四王",
            [7924] = "伊拉贡",
            [7927] = "皇帝的意志",
        },
        tab = "魔古山宝库(25H)",
    },
    {
        idName = {
            [6983] = "石头守卫",
            [6984] = "受诅者魔封",
            [6985] = "缚灵者戈拉亚 ",
            [6986] = "四王",
            [6987] = "伊拉贡",
            [6988] = "皇帝的意志",
        },
        tab = "魔古山宝库(随机)",
    },
}
]]

TS.TABS = {
    {
        idName = { 
			[8549] = "伊墨苏斯", [8555] = "堕落的守护者", [8561] = "诺鲁什", [8567] = "傲之煞",
			[8574] = "迦拉卡斯", [8580] = "钢铁战蝎", [8586] = "黑暗萨满", [8593] = "纳兹戈林将军",
			[8599] = "马尔考罗克", [8605] = "潘达利亚战利品", [8614] = "嗜血的索克", [8620] = "攻城匠师黑索",
			[8626] = "卡拉克西英杰", [8632] = "加尔鲁什·地狱咆哮",
		},
        tab = "决战奥格瑞玛(随机)",
    },
    {
        idName = {
			[8550] = "伊墨苏斯", [8556] = "堕落的守护者", [8562] = "诺鲁什", [8568] = "傲之煞",
			[8575] = "迦拉卡斯", [8581] = "钢铁战蝎", [8587] = "黑暗萨满", [8594] = "纳兹戈林将军",
			[8600] = "马尔考罗克", [8606] = "潘达利亚战利品", [8615] = "嗜血的索克", [8621] = "攻城匠师黑索",
			[8627] = "卡拉克西英杰", [8634] = "加尔鲁什·地狱咆哮",
		},
        tab = "决战奥格瑞玛(弹性)",
    },
    {
        idName = {
			[8551] = "伊墨苏斯", [8557] = "堕落的守护者", [8563] = "诺鲁什", [8569] = "傲之煞",
			[8576] = "迦拉卡斯", [8582] = "钢铁战蝎", [8588] = "黑暗萨满", [8595] = "纳兹戈林将军",
			[8601] = "马尔考罗克", [8608] = "潘达利亚战利品", [8616] = "嗜血的索克", [8622] = "攻城匠师黑索",
			[8628] = "卡拉克西英杰", [8635] = "加尔鲁什·地狱咆哮",
		},
        tab = "决战奥格瑞玛(10)",
    },
    {
        idName = {
			[8552] = "伊墨苏斯", [8558] = "堕落的守护者", [8564] = "诺鲁什", [8570] = "傲之煞",
			[8577] = "迦拉卡斯", [8583] = "钢铁战蝎", [8589] = "黑暗萨满", [8596] = "纳兹戈林将军",
			[8602] = "马尔考罗克", [8609] = "潘达利亚战利品", [8617] = "嗜血的索克", [8623] = "攻城匠师黑索",
			[8629] = "卡拉克西英杰", [8636] = "加尔鲁什·地狱咆哮",
		},
        tab = "决战奥格瑞玛(25)",
    },
    {
        idName = {
			[8553] = "伊墨苏斯", [8559] = "堕落的守护者", [8565] = "诺鲁什", [8571] = "傲之煞",
			[8578] = "迦拉卡斯", [8584] = "钢铁战蝎", [8590] = "黑暗萨满", [8597] = "纳兹戈林将军",
			[8603] = "马尔考罗克", [8610] = "潘达利亚战利品", [8618] = "嗜血的索克", [8624] = "攻城匠师黑索",
			[8630] = "卡拉克西英杰", [8637] = "加尔鲁什·地狱咆哮",
		},
        tab = "决战奥格瑞玛(10H)",
    },
    {
        idName = {
			[8554] = "伊墨苏斯", [8560] = "堕落的守护者", [8566] = "诺鲁什", [8573] = "傲之煞",
			[8579] = "迦拉卡斯", [8585] = "钢铁战蝎", [8591] = "黑暗萨满", [8598] = "纳兹戈林将军",
			[8604] = "马尔考罗克", [8612] = "潘达利亚战利品", [8619] = "嗜血的索克", [8625] = "攻城匠师黑索",
			[8631] = "卡拉克西英杰", [8638] = "加尔鲁什·地狱咆哮",
		},
        tab = "决战奥格瑞玛(25H)",
    },
}


for _, v in next, TS.TABS do
    if(not v.bosses) then
        v.bosses = {}
        for k in next, v.idName do
            tinsert(v.bosses, k)
        end
        table.sort(v.bosses)
    end
end

--[==[
-- 17:51:11 GetAchievementInfo(6168) => 6168, "死亡之翼英雄模式擊殺數(巨龍之魂)", 0, false, nil, nil, nil, "", 9, "Interface\Icons\achievment_boss_madnessofdeathwing", "", false, false, nil


X1 = {}
for _, cate in next, GetStatisticsCategoryList() do
    for i = 1, GetCategoryNumAchievements(cate) do
        local id, name = GetAchievementInfo(cate, i)
        if(name:find'杀死') then
            -- print(id, name)
            X1[id] = name
        end
    end
end

local X0 = {
'雷电王座',
'决战奥格瑞玛',
}
X1 = {}
for _, cate in next, GetStatisticsCategoryList() do
    for i = 1, GetCategoryNumAchievements(cate) do
        local id, name = GetAchievementInfo(cate, i)
        local ok = false
        for _, k in next, X0 do
            if(name:find(k)) then
                ok = true
                break
            end
        end
        if(ok) then
             print(id, name)
            X1[id] = name
        end
    end
end



X1 = {
}

X2 = {}
for id, name in next, X1 do
    local bossname, dungeon = name:match'^(.+)（(.+)）$'
    if not (bossname and dungeon) then
        print(name)
    else
        X2[dungeon] = X2[dungeon] or {}
        local tbl = X2[dungeon]
        bossname = bossname:gsub('杀死', '')
        tbl[id] = bossname
    end
end

XX = {}
for dungeon, data in next, X2 do
    local dname = dungeon
    if(dungeon:find'随机') then
        dname = dungeon:gsub('随机', '')..'(随机)'
    else
        local h = true
        if(dungeon:find'普通') then
            h = false
        end

        local n, name = dungeon:match('^(%d+)人'.. ( h and '英雄' or '普通' ) ..'(.+)$')
        dname = name .. '('..n.. (h and 'H' or '') .. ')'
    end

    local tbl = {
        tab = dname,
        idName = data,
    }
    table.insert(XX, tbl)
end
table.sort(XX, function(a, b) return a.tab < b.tab end)

]==]--
