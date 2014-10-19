﻿--
--	JSHB Options - enrage panel
--

if not tContains({ "HUNTER", "ROGUE" }, select(2, UnitClass("player") ) ) then return end

local L = _G.JSHB.L

function JSHB.Options:Panel_Enrage(ord)
	local DB = _G.JSHB.Options.DB
	return {
		order = ord,
		type = "group",
		name = (select(2, UnitClass("player") ) == "HUNTER") and L["Tranquilizing Shot"] or L["Shiv"],
		childGroups = "tab",
		args = {
			maintab = {
				order = 1,
				type = "group",
				name = (select(2, UnitClass("player") ) == "HUNTER") and L["Tranquilizing Shot"] or L["Shiv"],
				args = {
					enabled = {
						type = "toggle",
						order = 4,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) JSHB.Options:CollapseAll();DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					iconsize = {
						type = "range", 
						order = 6,
						name = L["Size"],
						min = 10, max = 100, step = 1,
						disabled = function(info) return not DB.enrage.enabled end,
						get = function(info) return (DB.enrage[info[#info] ]) end,
						set = function(info, size) DB.enrage[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					enablesound = {
						type = "toggle",
						order = 12,
						name = L["Sound"],
						width = "double",
						disabled = function(info) return not DB.enrage.enabled end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					sound = {
						type = "select",
						dialogControl = 'LSM30_Sound_JS',
						order = 14,
						name = L["Sound"],
						values = AceGUIWidgetLSMlists.sound,
						disabled = function(info) return not DB.enrage.enabled end,
						hidden = function(info) return not DB.enrage.enablesound end,
						get = function(info) return DB.enrage[ info[#info] ] end,
						set = function(info, value) DB.enrage[ info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,								
					},
					spacer8 = { order = 18, type = "description", name = " ", desc = "", width = "full"},
					removablesstuff = {
						order = 26,
						type = "group",
						name = L["Removable Buffs Display"],
						hidden = (not (select(2, UnitClass("player") ) == "HUNTER") ),
						guiInline = true,
						args = {
							enableremovables = {
								type = "toggle",
								order = 2,
								name = L["Display removable buffs"],
								width = "double",
								disabled = function(info) return not DB.enrage.enabled end,
								get = function(info) return DB.enrage[info[#info] ] end,
								set = function(info, value) JSHB.Options:CollapseAll();DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							iconsizeremovables = {
								type = "range", 
								order = 4,
								name = L["Removables icon size"],
								min = 10, max = 100, step = 1,
								disabled = function(info) return ( (not DB.enrage.enableremovables) or (not DB.enrage.enabled) ) end,
								get = function(info) return (DB.enrage[info[#info] ]) end,
								set = function(info, size) DB.enrage[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							removablespvponly = {
								type = "toggle",
								order = 6,
								name = L["PvP zone only"],
								width = "full",
								disabled = function(info) return ( (not DB.enrage.enableremovables) or (not DB.enrage.enabled) ) end,
								get = function(info) return DB.enrage[info[#info] ] end,
								set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							removablestips = {
								type = "toggle",
								order = 10,
								name = L["Show tips when hovering removable buffs"],
								width = "full",
								disabled = function(info) return ( (not DB.enrage.enableremovables) or (not DB.enrage.enabled) ) end,
								get = function(info) return DB.enrage[info[#info] ] end,
								set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							spacer17 = { order = 17, type = "description", name = " ", desc = "", width = "double"},
							showsettings2 = {
								type = "execute",
								order = 18,
								name = L["Expand"],
								hidden = function(info) return(DB.enrage.showsettings2 or (not DB.enrage.enabled) or (not DB.enrage.enableremovables) ) end,
								func = function(info) JSHB.Options:CollapseAll(); DB.enrage.showsettings2 = true end,
							},
							hidesettings = {
								type = "execute",
								order = 20,
								name = L["Collapse"],
								func = function(info) JSHB.Options:CollapseAll()	end,
								hidden = function(info) return(not DB.enrage.showsettings2) end,
							},
							removablesbackdrop = {
								type = "group",
								order = 28,
								name = L["Removable buffs backdrop"],
								guiInline = true,
								hidden = function(info) return(not DB.enrage.showsettings2) end,
								args = {
									removablesenablebackdrop = {
										type = "toggle",
										order = 1,
										name = L["Enable"],
										width = "double",
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablesbackdroptexture = {
										type = "select",
										dialogControl = 'LSM30_Background_JS',
										order = 2,
										name = L["Backdrop texture"],
										values = AceGUIWidgetLSMlists.background,
										disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablescolorbackdrop = {
										type = "toggle",
										order = 3,
										name = L["Color the backdrop"],
										disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablesbackdropcolor = {
										type = "color",
										order = 5,
										name = L["Backdrop color"],
										hasAlpha = true,
										disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
										hidden = function(info) return not DB.enrage.removablescolorbackdrop end,
										get = function(info) return unpack(DB.enrage[info[#info] ]) end,
										set = function(info, r, g, b, a) DB.enrage[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.enrage.removablescolorbackdrop end },
									removablestile = {
										type = "toggle",
										order = 7,
										name = L["Tile the backdrop"],
										disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablestilesize = {
										type = "range",
										order = 8,
										name = L["Tile size"],
										min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
										disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
										hidden = function(info) return not DB.enrage.removablestile end,
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									spacer11 = { order = 11, type = "description", name = "", desc = "", width = "full"},
									removablesbackdropoffsets = {
										type = "group",
										order = 14,
										name = L["Offsets"],
										guiInline = true,
										args = {
											offsetX1 = {
												type = "range",
												order = 1,
												name = L["Top-left X"],
												min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][1]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											offsetY1 = {
												type = "range", 
												order = 2,
												name = L["Top-left Y"],
												min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][2]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
											offsetX2 = {
												type = "range", 
												order = 8,
												name = L["Bottom-right X"],
												min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][3]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											offsetY2 = {
												type = "range", 
												order = 14,
												name = L["Bottom-right Y"],
												min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenablebackdrop"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][4]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},										
										},
									},
									spacer2 = { order = 16, type = "description", name = "", desc = "", width = "full"},
								},
							},
							spacer29 = { order = 29, type = "description", name = " ", desc = "", width = "full", hidden = function(info) return(not DB.enrage.showsettings2) end },
							removablesborder = {
								type = "group",
								order = 30,
								name = L["Removable buffs border"],
								guiInline = true,
								hidden = function(info) return(not DB.enrage.showsettings2) end,
								args = {
									removablesenableborder = {
										type = "toggle",
										order = 1,
										name = L["Enable"],
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablesbordercolor = {
										type = "color",
										order = 2,
										name = L["Border color"],
										hasAlpha = true,
										disabled = function(info) return not DB.enrage["removablesenableborder"] end,
										get = function(info) return unpack(DB.enrage[info[#info] ]) end,
										set = function(info, r, g, b, a) DB.enrage[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablesbordertexture = {
										type = "select",
										dialogControl = 'LSM30_Border_JS',
										order = 3,
										name = L["Border texture"],
										values = AceGUIWidgetLSMlists.border,
										disabled = function(info) return not DB.enrage["removablesenableborder"] end,
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablesedgesize = {
										type = "range",
										order = 4,
										name = L["Edge size"],
										min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
										disabled = function(info) return not DB.enrage["removablesenableborder"] end,
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									spacer7 = { order = 7, type = "description", name = "", desc = "", width = "full"},
									removablesbackdropinsets = {
										type = "group",
										order = 10,
										name = L["Insets"],
										guiInline = true,
										args = {
											left = {
												type = "range",
												order = 1,
												name = L["Left"],
												min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenableborder"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][1]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											right = {
												type = "range", 
												order = 2,
												name = L["Right"],
												min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenableborder"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][2]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
											top = {
												type = "range", 
												order = 8,
												name = L["Top"],
												min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenableborder"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][3]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											bottom = {
												type = "range", 
												order = 14,
												name = L["Bottom"],
												min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
												disabled = function(info) return not DB.enrage["removablesenableborder"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][4]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},										
										},
									},
								},
							},
							spacer31 = { order = 31, type = "description", name = " ", desc = "", width = "full", hidden = function(info) return(not DB.enrage.showsettings2) end },
							removablestexcoords = {
								type = "group",
								order = 32,
								name = L["Removable Buffs Texture Coords"],
								guiInline = true,
								hidden = function(info) return(not DB.enrage.showsettings2) end,
								args = {						
									removablesenabletexcoords = {
										type = "toggle",
										order = 5,
										name = L["Enable"],
										get = function(info) return DB.enrage[info[#info] ] end,
										set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
									},
									removablestexcoords = {
										type = "group",
										order = 6,
										name = L["Texture coords"],
										guiInline = true,
										args = {
											left = {
												type = "range",
												order = 2,
												name = L["Left"],
												min = 0, max = 1, step = .01,
												disabled = function(info) return not DB.enrage["removablesenabletexcoords"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][1]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											right = {
												type = "range", 
												order = 4,
												name = L["Right"],
												min = 0, max = 1, step = .01,
												disabled = function(info) return not DB.enrage["removablesenabletexcoords"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][2]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half"},
											top = {
												type = "range", 
												order = 8,
												name = L["Top"],
												min = 0, max = 1, step = .01,
												disabled = function(info) return not DB.enrage["removablesenabletexcoords"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][3]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},
											bottom = {
												type = "range", 
												order = 10,
												name = L["Bottom"],
												min = 0, max = 1, step = .01,
												disabled = function(info) return not DB.enrage["removablesenabletexcoords"] end,
												get = function(info) return (DB.enrage[info[#info-1] ][4]) end,
												set = function(info, offset) DB.enrage[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
											},										
										},
									},
								},
							},
						},
					},
					spacer18 = { order = 28, type = "description", name = " ", desc = "", width = "full", hidden = (not (select(2, UnitClass("player") ) == "HUNTER") ) },
					chatstuff = {
						order = 30,
						type = "group",
						name = L["Chat Notification"],
						guiInline = true,
						args = {
							removednotify = {
								type = "toggle",
								order = 2,
								name = L["Enable"],
								width = "full",
								disabled = function(info) return not DB.enrage.enabled end,
								get = function(info) return DB.enrage[info[#info] ] end,
								set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							spacer1 = { order = 4, type = "description", name = "", desc = "", width = "full", hidden = function(info) return not DB.enrage.removednotify end },
							solochan = {
								order = 6,
								type = "select",
								name = L["Solo"],
								desc = L["SOLOCHANNEL_DESC"],
								hidden = function(info) return not DB.enrage.removednotify end,
								disabled = function(info) return not DB.enrage.enabled end,
								style = "dropdown",
								values = function() return(JSHB.chatChannels) end,
								get = function(info) return(DB.enrage[info[#info] ]) end,
								set = function(info, value) DB.enrage[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							partychan = {
								order = 8,
								type = "select",
								name = L["In a party"],
								desc = L["PARTYCHANNEL_DESC"],
								hidden = function(info) return not DB.enrage.removednotify end,
								disabled = function(info) return not DB.enrage.enabled end,
								style = "dropdown",
								values = function() return(JSHB.chatChannels) end,
								get = function(info) return(DB.enrage[info[#info] ]) end,
								set = function(info, value) DB.enrage[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							raidchan = {
								order = 10,
								type = "select",
								name = L["In a raid"],
								desc = L["RAIDCHANNEL_DESC"],
								hidden = function(info) return not DB.enrage.removednotify end,
								disabled = function(info) return not DB.enrage.enabled end,
								style = "dropdown",
								values = function() return(JSHB.chatChannels) end,
								get = function(info) return(DB.enrage[info[#info] ]) end,
								set = function(info, value) DB.enrage[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							arenachan = {
								order = 12,
								type = "select",
								name = L["In an arena"],
								desc = L["ARENACHANNEL_DESC"],
								hidden = function(info) return not DB.enrage.removednotify end,
								disabled = function(info) return not DB.enrage.enabled end,
								style = "dropdown",
								values = function() return(JSHB.chatChannels) end,
								get = function(info) return(DB.enrage[info[#info] ]) end,
								set = function(info, value) DB.enrage[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							pvpchan = {
								order = 14,
								type = "select",
								name = L["In a PvP zone"],
								desc = L["PVPCHANNEL_DESC"],
								hidden = function(info) return not DB.enrage.removednotify end,
								disabled = function(info) return not DB.enrage.enabled end,
								style = "dropdown",
								values = function() return(JSHB.chatChannels) end,
								get = function(info) return(DB.enrage[info[#info] ]) end,
								set = function(info, value) DB.enrage[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
						},
					},
				},
			},
			backdrop = {
				type = "group",
				order = 22,
				name = L["Backdrop"],
				disabled = function(info) return (not DB.enrage.enabled) end,
				args = {
					enablebackdrop = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					backdroptexture = {
						type = "select",
						dialogControl = 'LSM30_Background_JS',
						order = 2,
						name = L["Backdrop texture"],
						values = AceGUIWidgetLSMlists.background,
						disabled = function(info) return not DB.enrage["enablebackdrop"] end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					colorbackdrop = {
						type = "toggle",
						order = 3,
						name = L["Color the backdrop"],
						disabled = function(info) return not DB.enrage["enablebackdrop"] end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					backdropcolor = {
						type = "color",
						order = 5,
						name = L["Backdrop color"],
						hasAlpha = true,
						disabled = function(info) return not DB.enrage["enablebackdrop"] end,
						hidden = function(info) return not DB.enrage.colorbackdrop end,
						get = function(info) return unpack(DB.enrage[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.enrage[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.enrage.colorbackdrop end },
					tile = {
						type = "toggle",
						order = 7,
						name = L["Tile the backdrop"],
						disabled = function(info) return not DB.enrage["enablebackdrop"] end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					tilesize = {
						type = "range",
						order = 8,
						name = L["Tile size"],
						min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
						disabled = function(info) return not DB.enrage["enablebackdrop"] end,
						hidden = function(info) return not DB.enrage.tile end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					spacer11 = { order = 11, type = "description", name = "", desc = "", width = "full"},
					backdropoffsets = {
						type = "group",
						order = 14,
						name = L["Offsets"],
						guiInline = true,
						args = {
							offsetX1 = {
								type = "range",
								order = 2,
								name = L["Top-left X"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enablebackdrop"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][1]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							offsetY1 = {
								type = "range", 
								order = 4,
								name = L["Top-left Y"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enablebackdrop"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][2]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
							offsetX2 = {
								type = "range", 
								order = 8,
								name = L["Bottom-right X"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enablebackdrop"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][3]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							offsetY2 = {
								type = "range", 
								order = 10,
								name = L["Bottom-right Y"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enablebackdrop"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][4]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},										
						},
					},
					spacer16 = { order = 16, type = "description", name = "", desc = "", width = "full"},
				},
			},
			border = {
				type = "group",
				order = 24,
				name = L["Border"],
				disabled = function(info) return (not DB.enrage.enabled) end,
				args = {
					enableborder = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					bordercolor = {
						type = "color",
						order = 2,
						name = L["Border color"],
						hasAlpha = true,
						disabled = function(info) return not DB.enrage["enableborder"] end,
						get = function(info) return unpack(DB.enrage[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.enrage[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					bordertexture = {
						type = "select",
						dialogControl = 'LSM30_Border_JS',
						order = 3,
						name = L["Border texture"],
						values = AceGUIWidgetLSMlists.border,
						disabled = function(info) return not DB.enrage["enableborder"] end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					edgesize = {
						type = "range",
						order = 4,
						name = L["Edge size"],
						min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
						disabled = function(info) return not DB.enrage["enableborder"] end,
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					spacer7 = { order = 7, type = "description", name = "", desc = "", width = "full"},
					backdropinsets = {
						type = "group",
						order = 10,
						name = L["Insets"],
						guiInline = true,
						args = {
							left = {
								type = "range",
								order = 1,
								name = L["Left"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enableborder"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][1]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							right = {
								type = "range", 
								order = 2,
								name = L["Right"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enableborder"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][2]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
							top = {
								type = "range", 
								order = 10,
								name = L["Top"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enableborder"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][3]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},
							bottom = {
								type = "range", 
								order = 12,
								name = L["Bottom"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.enrage["enableborder"] end,
								get = function(info) return (DB.enrage[info[#info-1] ][4]) end,
								set = function(info, offset) DB.enrage[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
							},										
						},
					},
				},
			},
			texcoords = {
				type = "group",
				order = 26,
				name = L["Texture coords"],
				disabled = function(info) return (not DB.enrage.enabled) end,
				args = {
					spacer2 = { order = 2, type = "description", name = " ", desc = "", width = "full"},
					enabletexcoords = {
						type = "toggle",
						order = 5,
						name = L["Enable"],
						get = function(info) return DB.enrage[info[#info] ] end,
						set = function(info, value) DB.enrage[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "full"},
					left = {
						type = "range",
						order = 8,
						name = L["Left"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.enrage["enabletexcoords"] end,
						get = function(info) return (DB.enrage[info[#info-1] ][1]) end,
						set = function(info, offset) DB.enrage[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					right = {
						type = "range", 
						order = 14,
						name = L["Right"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.enrage["enabletexcoords"] end,
						get = function(info) return (DB.enrage[info[#info-1] ][2]) end,
						set = function(info, offset) DB.enrage[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					spacer16 = { order = 16, type = "description", name = " ", desc = "", width = "half"},
					top = {
						type = "range", 
						order = 18,
						name = L["Top"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.enrage["enabletexcoords"] end,
						get = function(info) return (DB.enrage[info[#info-1] ][3]) end,
						set = function(info, offset) DB.enrage[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
					bottom = {
						type = "range", 
						order = 22,
						name = L["Bottom"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.enrage["enabletexcoords"] end,
						get = function(info) return (DB.enrage[info[#info-1] ][4]) end,
						set = function(info, offset) DB.enrage[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupEnrageModule) end,
					},
				},
			},
		},
	}
end
