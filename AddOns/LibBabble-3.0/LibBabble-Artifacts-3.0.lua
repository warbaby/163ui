﻿--[[
Name: LibBabble-Artifacts-3.0
Revision: $Revision: 11 $
Maintainers: Dridzt
Website: http://www.wowace.com/addons/libbabble-artifacts-3-0
Dependencies: None
License: MIT
]]

local MAJOR_VERSION = "LibBabble-Artifacts-3.0"
local MINOR_VERSION = 90000 + tonumber(("$Revision: 11 $"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub.") end
local lib = LibStub("LibBabble-3.0"):New(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local GAME_LOCALE = GetLocale()

lib:SetBaseTranslations (
	{
	["Chalice of the Mountain Kings"] = "Chalice of the Mountain Kings",
	["Clockwork Gnome"] = "Clockwork Gnome",
	["Staff of Sorcerer-Thane Thaurissan"] = "Staff of Sorcerer-Thane Thaurissan",
	["The Innkeeper's Daughter"] = "The Innkeeper's Daughter",
	["Belt Buckle with Anvilmar Crest"] = "Belt Buckle with Anvilmar Crest",
	["Bodacious Door Knocker"] = "Bodacious Door Knocker",
	["Bone Gaming Dice"] = "Bone Gaming Dice",
	["Boot Heel with Scrollwork"] = "Boot Heel with Scrollwork",
	["Ceramic Funeral Urn"] = "Ceramic Funeral Urn",
	["Dented Shield of Horuz Killcrow"] = "Dented Shield of Horuz Killcrow",
	["Dwarven Baby Socks"] = "Dwarven Baby Socks",
	["Golden Chamber Pot"] = "Golden Chamber Pot",
	["Ironstar's Petrified Shield"] = "Ironstar's Petrified Shield",
	["Mithril Chain of Angerforge"] = "Mithril Chain of Angerforge",
	["Moltenfist's Jeweled Goblet"] = "Moltenfist's Jeweled Goblet",
	["Notched Sword of Tunadil the Redeemer"] = "Notched Sword of Tunadil the Redeemer",
	["Pewter Drinking Cup"] = "Pewter Drinking Cup",
	["Pipe of Franclorn Forgewright"] = "Pipe of Franclorn Forgewright",
	["Scepter of Bronzebeard"] = "Scepter of Bronzebeard",
	["Scepter of Charlga Razorflank"] = "Scepter of Charlga Razorflank",
	["Scorched Staff of Shadow Priest Anund"] = "Scorched Staff of Shadow Priest Anund",
	["Silver Kris of Korl"] = "Silver Kris of Korl",
	["Silver Neck Torc"] = "Silver Neck Torc",
	["Skull Staff of Shadowforge"] = "Skull Staff of Shadowforge",
	["Spiked Gauntlets of Anvilrage"] = "Spiked Gauntlets of Anvilrage",
	["Stone Gryphon"] = "Stone Gryphon",
	["Warmaul of Burningeye"] = "Warmaul of Burningeye",
	["Winged Helm of Corehammer"] = "Winged Helm of Corehammer",
	["Wooden Whistle"] = "Wooden Whistle",
	["Word of Empress Zoe"] = "Word of Empress Zoe",
	["Worn Hunting Knife"] = "Worn Hunting Knife",
	["Arrival of the Naaru"] = "Arrival of the Naaru",
	["The Last Relic of Argus"] = "The Last Relic of Argus",
	["Anklet with Golden Bells"] = "Anklet with Golden Bells",
	["Baroque Sword Scabbard"] = "Baroque Sword Scabbard",
	["Carved Harp of Exotic Wood"] = "Carved Harp of Exotic Wood",
	["Dignified Portrait"] = "Dignified Portrait",
	["Fine Crystal Candelabra"] = "Fine Crystal Candelabra",
	["Plated Elekk Goad"] = "Plated Elekk Goad",
	["Scepter of the Nathrezim"] = "Scepter of the Nathrezim",
	["Strange Silver Paperweight"] = "Strange Silver Paperweight",
	["Ancient Amber"] = "Ancient Amber",
	["Extinct Turtle Shell"] = "Extinct Turtle Shell",
	["Fossilized Hatchling"] = "Fossilized Hatchling",
	["Fossilized Raptor"] = "Fossilized Raptor",
	["Pterrordax Hatchling"] = "Pterrordax Hatchling",
	["Ancient Shark Jaws"] = "Ancient Shark Jaws",
	["Beautiful Preserved Fern"] = "Beautiful Preserved Fern",
	["Black Trilobite"] = "Black Trilobite",
	["Devilsaur Tooth"] = "Devilsaur Tooth",
	["Feathered Raptor Arm"] = "Feathered Raptor Arm",
	["Imprint of a Kraken Tentacle"] = "Imprint of a Kraken Tentacle",
	["Insect in Amber"] = "Insect in Amber",
	["Proto-Drake Skeleton"] = "Proto-Drake Skeleton",
	["Shard of Petrified Wood"] = "Shard of Petrified Wood",
	["Strange Velvet Worm"] = "Strange Velvet Worm",
	["Twisted Ammonite Shell"] = "Twisted Ammonite Shell",
	["Vicious Ancient Fish"] = "Vicious Ancient Fish",
	["Bones of Transformation"] = "Bones of Transformation",
	["Druid and Priest Statue Set"] = "Druid and Priest Statue Set",
	["Highborne Soul Mirror"] = "Highborne Soul Mirror",
	["Kaldorei Wind Chimes"] = "Kaldorei Wind Chimes",
	["Queen Azshara's Dressing Gown"] = "Queen Azshara's Dressing Gown",
	["Tyrande's Favorite Doll"] = "Tyrande's Favorite Doll",
	["Wisp Amulet"] = "Wisp Amulet",
	["Carcanet of the Hundred Magi"] = "Carcanet of the Hundred Magi",
	["Chest of Tiny Glass Animals"] = "Chest of Tiny Glass Animals",
	["Cloak Clasp with Antlers"] = "Cloak Clasp with Antlers",
	["Coin from Eldre'Thalas"] = "Coin from Eldre'Thalas",
	["Cracked Crystal Vial"] = "Cracked Crystal Vial",
	["Delicate Music Box"] = "Delicate Music Box",
	["Green Dragon Ring"] = "Green Dragon Ring",
	["Hairpin of Silver and Malachite"] = "Hairpin of Silver and Malachite",
	["Highborne Pyxis"] = "Highborne Pyxis",
	["Inlaid Ivory Comb"] = "Inlaid Ivory Comb",
	["Kaldorei Amphora"] = "Kaldorei Amphora",
	["Necklace with Elune Pendant"] = "Necklace with Elune Pendant",
	["Scandalous Silk Nightgown"] = "Scandalous Silk Nightgown",
	["Scepter of Xavius"] = "Scepter of Xavius",
	["Shattered Glaive"] = "Shattered Glaive",
	["Silver Scroll Case"] = "Silver Scroll Case",
	["String of Small Pink Pearls"] = "String of Small Pink Pearls",
	["Umbra Crescent"] = "Umbra Crescent",
	["Blessing of the Old God"] = "Blessing of the Old God",
	["Puzzle Box of Yogg-Saron"] = "Puzzle Box of Yogg-Saron",
	["Ewer of Jormungar Blood"] = "Ewer of Jormungar Blood",
	["Gruesome Heart Box"] = "Gruesome Heart Box",
	["Infested Ruby Ring"] = "Infested Ruby Ring",
	["Scepter of Nezar'Azret"] = "Scepter of Nezar'Azret",
	["Six-Clawed Cornice"] = "Six-Clawed Cornice",
	["Spidery Sundial"] = "Spidery Sundial",
	["Vizier's Scrawled Streamer"] = "Vizier's Scrawled Streamer",
	["Headdress of the First Shaman"] = "Headdress of the First Shaman",
	["Fiendish Whip"] = "Fiendish Whip",
	["Fierce Wolf Figurine"] = "Fierce Wolf Figurine",
	["Gray Candle Stub"] = "Gray Candle Stub",
	["Maul of Stone Guard Mur'og"] = "Maul of Stone Guard Mur'og",
	["Rusted Steak Knife"] = "Rusted Steak Knife",
	["Scepter of Nekros Skullcrusher"] = "Scepter of Nekros Skullcrusher",
	["Skull Drinking Cup"] = "Skull Drinking Cup",
	["Tile of Glazed Clay"] = "Tile of Glazed Clay",
	["Tiny Bronze Scorpion"] = "Tiny Bronze Scorpion",
	["Mummified Monkey Paw"] = "Mummified Monkey Paw", -- spell + item name = "Crawling Claw"
	["Pendant of the Scarab Storm"] = "Pendant of the Scarab Storm",
	["Ring of the Boy Emperor"] = "Ring of the Boy Emperor",
	["Scepter of Azj'Aqir"] = "Scepter of Azj'Aqir",
	["Scimitar of the Sirocco"] = "Scimitar of the Sirocco",
	["Staff of Ammunae"] = "Staff of Ammunae",
	["Canopic Jar"] = "Canopic Jar",
	["Castle of Sand"] = "Castle of Sand",
	["Cat Statue with Emerald Eyes"] = "Cat Statue with Emerald Eyes",
	["Engraved Scimitar Hilt"] = "Engraved Scimitar Hilt",
	["Sketch of a Desert Palace"] = "Sketch of a Desert Palace",
	["Soapstone Scarab Necklace"] = "Soapstone Scarab Necklace",
	["Tiny Oasis Mosaic"] = "Tiny Oasis Mosaic",
	["Haunted War Drum"] = "Haunted War Drum",
	["Voodoo Figurine"] = "Voodoo Figurine",
	["Zin'rokh, Destroyer of Worlds"] = "Zin'rokh, Destroyer of Worlds",
	["Atal'ai Scepter"] = "Atal'ai Scepter",
	["Bracelet of Jade and Coins"] = "Bracelet of Jade and Coins",
	["Cinnabar Bijou"] = "Cinnabar Bijou",
	["Drakkari Sacrificial Knife"] = "Drakkari Sacrificial Knife",
	["Eerie Smolderthorn Idol"] = "Eerie Smolderthorn Idol",
	["Feathered Gold Earring"] = "Feathered Gold Earring",
	["Fetish of Hir'eek"] = "Fetish of Hir'eek",
	["Fine Bloodscalp Dinnerware"] = "Fine Bloodscalp Dinnerware",
	["Gahz'rilla Figurine"] = "Gahz'rilla Figurine",
	["Jade Asp with Ruby Eyes"] = "Jade Asp with Ruby Eyes",
	["Lizard Foot Charm"] = "Lizard Foot Charm",
	["Skull-Shaped Planter"] = "Skull-Shaped Planter",
	["Tooth with Gold Filling"] = "Tooth with Gold Filling",
	["Zandalari Voodoo Doll"] = "Zandalari Voodoo Doll",
	["Nifflevar Bearded Axe"] = "Nifflevar Bearded Axe",
	["Vrykul Drinking Horn"] = "Vrykul Drinking Horn",
	["Fanged Cloak Pin"] = "Fanged Cloak Pin",
	["Flint Striker"] = "Flint Striker",
	["Intricate Treasure Chest Key"] = "Intricate Treasure Chest Key",
	["Scramseax"] = "Scramseax",
	["Thorned Necklace"] = "Thorned Necklace",
	["Pandaren Tea Set"] = "Pandaren Tea Set",
	["Pandaren Game Board"] = "Pandaren Game Board",
	["Twin Stein Set of Brewfather Quan Tou Kuo"] = "Twin Stein Set of Brewfather Quan Tou Kuo",
	["Walking Cane of Brewfather Ren Yun"] = "Walking Cane of Brewfather Ren Yun",
	["Empty Keg of Brewfather Xin Wo Yin"] = "Empty Keg of Brewfather Xin Wo Yin",
	["Carved Bronze Mirror"] = "Carved Bronze Mirror",
	["Gold-Inlaid Porcelain Funerary Figurine"] = "Gold-Inlaid Porcelain Funerary Figurine",
	["Apothecary Tins"] = "Apothecary Tins",
	["Pearl of Yu'lon"] = "Pearl of Yu'lon",
	["Standard of Niuzao"] = "Standard of Niuzao",
	["Umbrella of Chi-Ji"] = "Umbrella of Chi-Ji",
	["Spear of Xuen"] = "Spear of Xuen",
	["Manacles of Rebellion"] = "Manacles of Rebellion",
	["Cracked Mogu Runestone"] = "Cracked Mogu Runestone",
	["Terracotta Arm"] = "Terracotta Arm",
	["Petrified Bone Whip"] = "Petrified Bone Whip",
	["Thunder King Insignia"] = "Thunder King Insignia",
	["Edicts of the Thunder King"] = "Edicts of the Thunder King",
	["Iron Amulet"] = "Iron Amulet",
	["Warlord's Branding Iron"] = "Warlord's Branding Iron",
	["Mogu Coin"] = "Mogu Coin",
	["Worn Monument Ledger"] = "Worn Monument Ledger",
	["Quilen Statuette"] = "Quilen Statuette",
	["Anatomical Dummy"] = "Anatomical Dummy",
	["Banner of the Mantid Empire"] = "Banner of the Mantid Empire",
	["Ancient Sap Feeder"] = "Ancient Sap Feeder",
	["The Praying Mantid"] = "The Praying Mantid",
	["Inert Sound Beacon"] = "Inert Sound Beacon",
	["Remains of a Paragon"] = "Remains of a Paragon",
	["Mantid Lamp"] = "Mantid Lamp",
	["Pollen Collector"] = "Pollen Collector",
	["Kypari Sap Container"] = "Kypari Sap Container",
	["Mantid Sky Reaver"] = "Mantid Sky Reaver",
	["Sonic Pulse Generator"] = "Sonic Pulse Generator",
	}
)

if GAME_LOCALE == "enUS" then
	lib:SetCurrentTranslations(true)


elseif GAME_LOCALE == "zhCN" then
	lib:SetCurrentTranslations (
	{
	["Anatomical Dummy"] = "解剖用假人",
	["Ancient Amber"] = "远古琥珀",
	["Ancient Sap Feeder"] = "Ancient Sap Feeder", -- Requires localization
	["Ancient Shark Jaws"] = "远古鲨鱼颌骨",
	["Anklet with Golden Bells"] = "金铃脚镯",
	["Apothecary Tins"] = "药罐子",
	["Arrival of the Naaru"] = "纳鲁来临",
	["Atal'ai Scepter"] = "阿塔莱节杖",
	["Banner of the Mantid Empire"] = "Banner of the Mantid Empire", -- Requires localization
	["Baroque Sword Scabbard"] = "巴洛克剑鞘",
	["Beautiful Preserved Fern"] = "美丽的蕨类化石",
	["Belt Buckle with Anvilmar Crest"] = "安威玛尔纹饰带扣",
	["Black Trilobite"] = "黑色三叶虫",
	["Blessing of the Old God"] = "上古之神的祝福",
	["Bodacious Door Knocker"] = "显眼的门环",
	["Bone Gaming Dice"] = "骨制游戏骰",
	["Bones of Transformation"] = "扭曲骸骨",
	["Boot Heel with Scrollwork"] = "纹饰靴跟",
	["Bracelet of Jade and Coins"] = "玉币手镯",
	["Canopic Jar"] = "坎努匹克陶罐",
	["Carcanet of the Hundred Magi"] = "百法师之宝石项圈",
	["Carved Bronze Mirror"] = "雕花铜镜",
	["Carved Harp of Exotic Wood"] = "雕花瑰木琴",
	["Castle of Sand"] = "沙城",
	["Cat Statue with Emerald Eyes"] = "镶翡翠眼猫雕像",
	["Ceramic Funeral Urn"] = "陶瓷骨灰坛",
	["Chalice of the Mountain Kings"] = "山丘之王的圣杯",
	["Chest of Tiny Glass Animals"] = "一箱精致的玻璃动物",
	["Cinnabar Bijou"] = "赤红宝石",
	["Cloak Clasp with Antlers"] = "镶角披风",
	["Clockwork Gnome"] = "发条侏儒",
	["Coin from Eldre'Thalas"] = "埃雷萨拉斯硬币",
	["Cracked Crystal Vial"] = "开裂的水晶瓶",
	["Cracked Mogu Runestone"] = "碎裂的魔古符文石",
	["Delicate Music Box"] = "精致的八音盒",
	["Dented Shield of Horuz Killcrow"] = "屠龙勇士霍鲁兹的破盾",
	["Devilsaur Tooth"] = "魔暴龙的牙齿",
	["Dignified Portrait"] = "庄严的肖像画",
	["Drakkari Sacrificial Knife"] = "达卡莱献祭之刃",
	["Druid and Priest Statue Set"] = "德鲁伊和牧师雕像组",
	["Dwarven Baby Socks"] = "矮人婴儿短袜",
	["Edicts of the Thunder King"] = "雷电之王的法典",
	["Eerie Smolderthorn Idol"] = "诡异的燃棘神像",
	["Empty Keg of Brewfather Xin Wo Yin"] = "酒中仙尹心卧的空酒桶",
	["Engraved Scimitar Hilt"] = "雕花弯刀柄首",
	["Ewer of Jormungar Blood"] = "一壶冰虫血",
	["Extinct Turtle Shell"] = "绝种龟壳",
	["Fanged Cloak Pin"] = "齿缘斗篷别针",
	["Feathered Gold Earring"] = "羽饰黄金耳环",
	["Feathered Raptor Arm"] = "长羽毛的迅猛龙前肢",
	["Fetish of Hir'eek"] = "希里克神像",
	["Fiendish Whip"] = "恶魔之鞭",
	["Fierce Wolf Figurine"] = "凶猛的战狼塑像",
	["Fine Bloodscalp Dinnerware"] = "精致的血顶餐具",
	["Fine Crystal Candelabra"] = "精致的水晶烛台",
	["Flint Striker"] = "燧石打火器",
	["Fossilized Hatchling"] = "化石幼兽",
	["Fossilized Raptor"] = "化石迅猛龙",
	["Gahz'rilla Figurine"] = "加兹瑞拉雕像",
	["Golden Chamber Pot"] = "纯金夜壶",
	["Gold-Inlaid Porcelain Funerary Figurine"] = "鎏金陪葬瓷俑",
	["Gray Candle Stub"] = "灰烛残端",
	["Green Dragon Ring"] = "绿龙之环",
	["Gruesome Heart Box"] = "阴森的心形盒子",
	["Hairpin of Silver and Malachite"] = "银质镶石发簪",
	["Haunted War Drum"] = "寄魂战鼓",
	["Headdress of the First Shaman"] = "首席萨满的头饰",
	["Highborne Pyxis"] = "上层精灵的小盒",
	["Highborne Soul Mirror"] = "上层精灵的灵魂镜",
	["Imprint of a Kraken Tentacle"] = "海怪触角印痕",
	["Inert Sound Beacon"] = "Inert Sound Beacon", -- Requires localization
	["Infested Ruby Ring"] = "受污染的红宝石指环",
	["Inlaid Ivory Comb"] = "象牙嵌镶梳",
	["Insect in Amber"] = "琥珀里的昆虫",
	["Intricate Treasure Chest Key"] = "精致的宝箱钥匙",
	["Iron Amulet"] = "铁制护符",
	["Ironstar's Petrified Shield"] = "铁星的化石盾牌",
	["Jade Asp with Ruby Eyes"] = "红目玉角蝰",
	["Kaldorei Amphora"] = "卡多雷土罐",
	["Kaldorei Wind Chimes"] = "卡多雷风铃",
	["Kypari Sap Container"] = "Kypari Sap Container", -- Requires localization
	["Lizard Foot Charm"] = "蜥蜴脚足咒符",
	["Manacles of Rebellion"] = "叛军的镣铐",
	["Mantid Lamp"] = "Mantid Lamp", -- Requires localization
	["Mantid Sky Reaver"] = "Mantid Sky Reaver", -- Requires localization
	["Maul of Stone Guard Mur'og"] = "石头守卫莫奥格之槌",
	["Mithril Chain of Angerforge"] = "怒炉的秘银链",
	["Mogu Coin"] = "魔古钱币",
	["Moltenfist's Jeweled Goblet"] = "火拳的宝石杯",
	["Mummified Monkey Paw"] = "猴爪木乃伊",
	["Necklace with Elune Pendant"] = "艾露恩坠饰项链",
	["Nifflevar Bearded Axe"] = "尼弗莱瓦长须斧",
	["Notched Sword of Tunadil the Redeemer"] = "救赎者图纳迪尔的残剑",
	["Pandaren Game Board"] = "熊猫人棋盘",
	["Pandaren Tea Set"] = "熊猫人茶具",
	["Pearl of Yu'lon"] = "玉珑骊珠",
	["Pendant of the Scarab Storm"] = "圣甲虫风暴坠饰",
	["Petrified Bone Whip"] = "石化的骨鞭",
	["Pewter Drinking Cup"] = "锡镴酒杯",
	["Pipe of Franclorn Forgewright"] = "弗兰克罗恩·铸铁的烟斗",
	["Plated Elekk Goad"] = "镀金赶象棒",
	["Pollen Collector"] = "Pollen Collector", -- Requires localization
	["Proto-Drake Skeleton"] = "始祖幼龙骨骼",
	["Pterrordax Hatchling"] = "翼手龙宝宝",
	["Puzzle Box of Yogg-Saron"] = "尤格萨隆的谜之匣",
	["Queen Azshara's Dressing Gown"] = "艾萨拉女王的便袍",
	["Quilen Statuette"] = "魁麟雕像",
	["Remains of a Paragon"] = "Remains of a Paragon", -- Requires localization
	["Ring of the Boy Emperor"] = "孩童皇帝的戒指",
	["Rusted Steak Knife"] = "锈迹斑斑的切肉刀",
	["Scandalous Silk Nightgown"] = "不体面的丝质长袍",
	["Scepter of Azj'Aqir"] = "阿兹亚基节杖",
	["Scepter of Bronzebeard"] = "铜须的节杖",
	["Scepter of Charlga Razorflank"] = "卡尔加·刺肋的节杖",
	["Scepter of Nekros Skullcrusher"] = "碎颅者耐克鲁斯的节杖",
	["Scepter of Nezar'Azret"] = "妮萨阿兹雷的节杖",
	["Scepter of the Nathrezim"] = "纳斯雷兹姆节杖",
	["Scepter of Xavius"] = "萨维斯的节杖",
	["Scimitar of the Sirocco"] = "热风弯刀",
	["Scorched Staff of Shadow Priest Anund"] = "暗影牧师安努德的焦枯手杖",
	Scramseax = "单刃猎刀",
	["Shard of Petrified Wood"] = "化石树木碎片",
	["Shattered Glaive"] = "破损的战刃",
	["Silver Kris of Korl"] = "考尔的银制短剑",
	["Silver Neck Torc"] = "银制颈环",
	["Silver Scroll Case"] = "白银卷轴匣",
	["Six-Clawed Cornice"] = "六爪檐板",
	["Sketch of a Desert Palace"] = "沙漠宫殿的草图",
	["Skull Drinking Cup"] = "骨制酒杯",
	["Skull-Shaped Planter"] = "头骨形种植器",
	["Skull Staff of Shadowforge"] = "暗炉骨杖",
	["Soapstone Scarab Necklace"] = "皂石圣甲虫项链",
	["Sonic Pulse Generator"] = "Sonic Pulse Generator", -- Requires localization
	["Spear of Xuen"] = "雪怒之矛",
	["Spidery Sundial"] = "细足日晷",
	["Spiked Gauntlets of Anvilrage"] = "铁怒的钉刺手甲",
	["Staff of Ammunae"] = "阿穆纳伊之杖",
	["Staff of Sorcerer-Thane Thaurissan"] = "巫王索瑞森的法杖",
	["Standard of Niuzao"] = "砮皂之旗",
	["Stone Gryphon"] = "狮鹫石像",
	["Strange Silver Paperweight"] = "奇特的银镇纸",
	["Strange Velvet Worm"] = "奇特的绒毛蠕虫",
	["String of Small Pink Pearls"] = "粉珠串饰",
	["Terracotta Arm"] = "陶俑手臂",
	["The Innkeeper's Daughter"] = "旅店老板的女儿",
	["The Last Relic of Argus"] = "阿古斯的最后一件圣物",
	["The Praying Mantid"] = "The Praying Mantid", -- Requires localization
	["Thorned Necklace"] = "棘刺颈环",
	["Thunder King Insignia"] = "雷电之王勋章",
	["Tile of Glazed Clay"] = "釉土瓦片",
	["Tiny Bronze Scorpion"] = "小巧的青铜蝎",
	["Tiny Oasis Mosaic"] = "绿洲彩嵌",
	["Tooth with Gold Filling"] = "镶金假牙",
	["Twin Stein Set of Brewfather Quan Tou Kuo"] = "酒中仙郭乾斗的鸳鸯杯",
	["Twisted Ammonite Shell"] = "扭曲的鹦鹉螺壳",
	["Tyrande's Favorite Doll"] = "泰兰德最爱的玩偶",
	["Umbra Crescent"] = "暗月刀",
	["Umbrella of Chi-Ji"] = "赤精之伞",
	["Vicious Ancient Fish"] = "邪恶的远古之鱼",
	["Vizier's Scrawled Streamer"] = "蛛魔元老的草书条幅",
	["Voodoo Figurine"] = "巫毒雕像",
	["Vrykul Drinking Horn"] = "维库饮水角",
	["Walking Cane of Brewfather Ren Yun"] = "酒中仙云壬的拐杖",
	["Warlord's Branding Iron"] = "军阀的烙铁",
	["Warmaul of Burningeye"] = "燃眼的战槌",
	["Winged Helm of Corehammer"] = "锤核翼盔",
	["Wisp Amulet"] = "小精灵护符",
	["Wooden Whistle"] = "木制口哨",
	["Word of Empress Zoe"] = "佐伊女皇之令",
	["Worn Hunting Knife"] = "破旧的猎刀",
	["Worn Monument Ledger"] = "破损的石碑底座",
	["Zandalari Voodoo Doll"] = "赞达拉巫毒人偶",
	["Zin'rokh, Destroyer of Worlds"] = "辛洛斯，诸界的毁灭者",
}

)

elseif GAME_LOCALE == "zhTW" then
	lib:SetCurrentTranslations (
	{
	["Anatomical Dummy"] = "解剖學人偶",
	["Ancient Amber"] = "古老的琥珀",
	["Ancient Sap Feeder"] = "Ancient Sap Feeder", -- Requires localization
	["Ancient Shark Jaws"] = "古老鯊魚下顎",
	["Anklet with Golden Bells"] = "金鈴鐺足環",
	["Apothecary Tins"] = "藥劑師罐子",
	["Arrival of the Naaru"] = "那魯的降臨",
	["Atal'ai Scepter"] = "阿塔萊權杖",
	["Banner of the Mantid Empire"] = "Banner of the Mantid Empire", -- Requires localization
	["Baroque Sword Scabbard"] = "巴洛克劍鞘",
	["Beautiful Preserved Fern"] = "保存完整的蕨類",
	["Belt Buckle with Anvilmar Crest"] = "安威瑪紋飾腰帶扣環",
	["Black Trilobite"] = "黑色三葉蟲",
	["Blessing of the Old God"] = "上古之神的祝福",
	["Bodacious Door Knocker"] = "奇特的叩門環",
	["Bone Gaming Dice"] = "骨製遊戲骰子",
	["Bones of Transformation"] = "變形之骨",
	["Boot Heel with Scrollwork"] = "渦紋鞋跟",
	["Bracelet of Jade and Coins"] = "碧玉錢幣手鐲",
	["Canopic Jar"] = "臟器罈",
	["Carcanet of the Hundred Magi"] = "百法師項鍊",
	["Carved Bronze Mirror"] = "雕刻精美的銅鏡",
	["Carved Harp of Exotic Wood"] = "雕刻的奇木豎琴",
	["Castle of Sand"] = "沙之堡",
	["Cat Statue with Emerald Eyes"] = "翡翠眼珠的小貓雕像",
	["Ceramic Funeral Urn"] = "陶製骨灰罈",
	["Chalice of the Mountain Kings"] = "山脈之王的酒杯",
	["Chest of Tiny Glass Animals"] = "一箱玻璃小動物",
	["Cinnabar Bijou"] = "朱砂寶石",
	["Cloak Clasp with Antlers"] = "鹿角披風扣",
	["Clockwork Gnome"] = "發條地精",
	["Coin from Eldre'Thalas"] = "埃德薩拉斯錢幣",
	["Cracked Crystal Vial"] = "破裂的水晶瓶",
	["Cracked Mogu Runestone"] = "破裂的魔古符石",
	["Delicate Music Box"] = "精緻的音樂盒",
	["Dented Shield of Horuz Killcrow"] = "荷魯茲·滅鴉的凹陷盾牌",
	["Devilsaur Tooth"] = "魔暴龍牙齒",
	["Dignified Portrait"] = "莊嚴的肖像",
	["Drakkari Sacrificial Knife"] = "德拉克瑞祭儀之刀",
	["Druid and Priest Statue Set"] = "德魯伊和牧師的雕像組合",
	["Dwarven Baby Socks"] = "矮人嬰兒襪",
	["Edicts of the Thunder King"] = "雷王的法令",
	["Eerie Smolderthorn Idol"] = "恐怖的燃棘塑像",
	["Empty Keg of Brewfather Xin Wo Yin"] = "釀酒老爹心無盈的空桶",
	["Engraved Scimitar Hilt"] = "紋刻彎刀握柄",
	["Ewer of Jormungar Blood"] = "一大瓶蟄猛巨蟲血液",
	["Extinct Turtle Shell"] = "絕種龜殼",
	["Fanged Cloak Pin"] = "尖牙披風飾針",
	["Feathered Gold Earring"] = "羽狀黃金耳環",
	["Feathered Raptor Arm"] = "羽毛迅猛龍臂",
	["Fetish of Hir'eek"] = "希爾雷克神像",
	["Fiendish Whip"] = "惡魔之鞭",
	["Fierce Wolf Figurine"] = "兇猛狼型刻像",
	["Fine Bloodscalp Dinnerware"] = "精緻血頂族晚餐器皿",
	["Fine Crystal Candelabra"] = "精緻水晶燭臺",
	["Flint Striker"] = "燧石生火杖",
	["Fossilized Hatchling"] = "化石小迅猛龍",
	["Fossilized Raptor"] = "化石迅猛龍",
	["Gahz'rilla Figurine"] = "加茲瑞拉刻像",
	["Golden Chamber Pot"] = "黃金夜壺",
	["Gold-Inlaid Porcelain Funerary Figurine"] = "鑲金陶瓷葬儀刻像",
	["Gray Candle Stub"] = "灰色的蠟燭殘柱",
	["Green Dragon Ring"] = "綠龍戒指",
	["Gruesome Heart Box"] = "恐怖的心臟盒",
	["Hairpin of Silver and Malachite"] = "孔雀石銀飾髮夾",
	["Haunted War Drum"] = "作祟戰鼓",
	["Headdress of the First Shaman"] = "薩滿始祖的頭飾",
	["Highborne Pyxis"] = "精靈貴族精品盒",
	["Highborne Soul Mirror"] = "精靈貴族靈魂之鏡",
	["Imprint of a Kraken Tentacle"] = "海怪觸手化石",
	["Inert Sound Beacon"] = "Inert Sound Beacon", -- Requires localization
	["Infested Ruby Ring"] = "感染的紅寶石戒指",
	["Inlaid Ivory Comb"] = "象牙嵌飾頭冠",
	["Insect in Amber"] = "封有昆蟲的琥珀",
	["Intricate Treasure Chest Key"] = "複雜的寶箱鑰匙",
	["Iron Amulet"] = "鐵製項鍊",
	["Ironstar's Petrified Shield"] = "鐵星的石化盾牌",
	["Jade Asp with Ruby Eyes"] = "鑲有紅寶石雙眼的玉蛇",
	["Kaldorei Amphora"] = "卡多雷雙耳瓶",
	["Kaldorei Wind Chimes"] = "卡多雷風鈴",
	["Kypari Sap Container"] = "Kypari Sap Container", -- Requires localization
	["Lizard Foot Charm"] = "蜥蜴之足符咒",
	["Manacles of Rebellion"] = "叛亂鐐銬",
	["Mantid Lamp"] = "Mantid Lamp", -- Requires localization
	["Mantid Sky Reaver"] = "Mantid Sky Reaver", -- Requires localization
	["Maul of Stone Guard Mur'og"] = "石衛士姆拉格之槌",
	["Mithril Chain of Angerforge"] = "安格弗秘銀項鍊",
	["Mogu Coin"] = "魔古硬幣",
	["Moltenfist's Jeweled Goblet"] = "火拳的寶石酒杯",
	["Mummified Monkey Paw"] = "木乃伊猴掌",
	["Necklace with Elune Pendant"] = "伊露恩墜飾項鍊",
	["Nifflevar Bearded Axe"] = "尼弗瓦鉤斧",
	["Notched Sword of Tunadil the Redeemer"] = "『救贖者』圖納迪爾之紋刻劍",
	["Pandaren Game Board"] = "熊貓人棋盤",
	["Pandaren Tea Set"] = "熊貓人茶具組",
	["Pearl of Yu'lon"] = "玉龍之珠",
	["Pendant of the Scarab Storm"] = "甲蟲風暴墜飾",
	["Petrified Bone Whip"] = "硬化的骨鞭",
	["Pewter Drinking Cup"] = "白鑞酒杯",
	["Pipe of Franclorn Forgewright"] = "弗蘭克羅恩·鑄鐵的煙斗",
	["Plated Elekk Goad"] = "鍍造過的伊萊克刺棒",
	["Pollen Collector"] = "Pollen Collector", -- Requires localization
	["Proto-Drake Skeleton"] = "元龍骷髏",
	["Pterrordax Hatchling"] = "翼手龍寶寶",
	["Puzzle Box of Yogg-Saron"] = "尤格薩倫的解謎箱",
	["Queen Azshara's Dressing Gown"] = "艾薩拉女王的晨衣",
	["Quilen Statuette"] = "麒麟獸雕像",
	["Remains of a Paragon"] = "Remains of a Paragon", -- Requires localization
	["Ring of the Boy Emperor"] = "年少皇帝之戒",
	["Rusted Steak Knife"] = "生鏽的牛排刀",
	["Scandalous Silk Nightgown"] = "令人羞恥的絲質睡衣",
	["Scepter of Azj'Aqir"] = "阿茲亞基權杖",
	["Scepter of Bronzebeard"] = "銅鬚權杖",
	["Scepter of Charlga Razorflank"] = "卡爾加·刺肋的權杖",
	["Scepter of Nekros Skullcrusher"] = "耐克魯斯·碎顱者的權杖",
	["Scepter of Nezar'Azret"] = "奈札兒阿茲瑞特權杖",
	["Scepter of the Nathrezim"] = "納斯雷茲姆權杖",
	["Scepter of Xavius"] = "薩維斯權杖",
	["Scimitar of the Sirocco"] = "西羅科彎刀",
	["Scorched Staff of Shadow Priest Anund"] = "暗影牧師阿努德之焦灼法杖",
	Scramseax = "撒克遜砍刀",
	["Shard of Petrified Wood"] = "石化木裂片",
	["Shattered Glaive"] = "碎裂的旋刃",
	["Silver Kris of Korl"] = "考爾銀色波刃劍",
	["Silver Neck Torc"] = "銀色頸部飾環",
	["Silver Scroll Case"] = "銀色卷軸匣",
	["Six-Clawed Cornice"] = "六爪飛簷",
	["Sketch of a Desert Palace"] = "沙漠宮殿草圖",
	["Skull Drinking Cup"] = "顱骨酒杯",
	["Skull-Shaped Planter"] = "顱型花盆",
	["Skull Staff of Shadowforge"] = "影爐骷髏法杖",
	["Soapstone Scarab Necklace"] = "滑石甲蟲項鍊",
	["Sonic Pulse Generator"] = "Sonic Pulse Generator", -- Requires localization
	["Spear of Xuen"] = "雪怒之矛",
	["Spidery Sundial"] = "蜘蛛日晷",
	["Spiked Gauntlets of Anvilrage"] = "鐵怒尖刺護手",
	["Staff of Ammunae"] = "安姆內法杖",
	["Staff of Sorcerer-Thane Thaurissan"] = "巫士族長索瑞森法杖",
	["Standard of Niuzao"] = "怒兆軍旗",
	["Stone Gryphon"] = "石獅鷲獸",
	["Strange Silver Paperweight"] = "奇怪的銀色紙鎮",
	["Strange Velvet Worm"] = "怪異絲絨蟲",
	["String of Small Pink Pearls"] = "粉紅小珍珠串",
	["Terracotta Arm"] = "兵馬俑手臂",
	["The Innkeeper's Daughter"] = "旅店老闆的女兒",
	["The Last Relic of Argus"] = "阿古斯最後的聖物",
	["The Praying Mantid"] = "The Praying Mantid", -- Requires localization
	["Thorned Necklace"] = "帶刺項鍊",
	["Thunder King Insignia"] = "雷王徽記",
	["Tile of Glazed Clay"] = "釉面黏土磚瓦",
	["Tiny Bronze Scorpion"] = "小銅蠍",
	["Tiny Oasis Mosaic"] = "小片綠洲馬賽克工藝",
	["Tooth with Gold Filling"] = "塞有金質填充物的牙齒",
	["Twin Stein Set of Brewfather Quan Tou Kuo"] = "釀酒老爹郭拳頭的鴛鴦對杯",
	["Twisted Ammonite Shell"] = "彎曲的菊石殼",
	["Tyrande's Favorite Doll"] = "泰蘭妲珍愛的娃娃",
	["Umbra Crescent"] = "陰影月牙刃",
	["Umbrella of Chi-Ji"] = "赤吉之傘",
	["Vicious Ancient Fish"] = "兇惡古魚",
	["Vizier's Scrawled Streamer"] = "輔臣的潦草紙條",
	["Voodoo Figurine"] = "巫毒刻像",
	["Vrykul Drinking Horn"] = "維酷角杯",
	["Walking Cane of Brewfather Ren Yun"] = "釀酒老爹雲仁的拐杖",
	["Warlord's Branding Iron"] = "督軍的烙鐵",
	["Warmaul of Burningeye"] = "燃眼戰槌",
	["Winged Helm of Corehammer"] = "核錘翼盔",
	["Wisp Amulet"] = "幽光護符",
	["Wooden Whistle"] = "木製哨子",
	["Word of Empress Zoe"] = "柔伊女皇之語",
	["Worn Hunting Knife"] = "磨損的狩獵小刀",
	["Worn Monument Ledger"] = "破舊的紀念碑記錄簿",
	["Zandalari Voodoo Doll"] = "贊達拉巫毒人偶",
	["Zin'rokh, Destroyer of Worlds"] = "辛洛斯，諸界毀滅者",
}

)

else
	error(("%s: Locale %q not supported"):format(MAJOR_VERSION, GAME_LOCALE))
end
