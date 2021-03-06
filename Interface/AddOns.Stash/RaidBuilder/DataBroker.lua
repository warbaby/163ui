
BuildEnv(...)

local addonName = ...

local DataBroker = RaidBuilder:NewModule('DataBroker', 'AceEvent-3.0', 'NetEaseGUI-DropMenu-1.0')

local LDB = LibStub('LibDataBroker-1.1')

local ICON1 = [[|TInterface\AddOns\RaidBuilder\Media\DataBroker:12:12:0:0:128:32:0:32:0:32|t]]
local ICON2 = [[|TInterface\AddOns\RaidBuilder\Media\DataBroker:12:12:0:0:128:32:32:65:0:32|t]]
local ICON3 = [[|TInterface\AddOns\RaidBuilder\Media\DataBroker:12:12:0:0:128:32:64:95:0:32|t]]
local ICON4 = [[|TInterface\AddOns\RaidBuilder\Media\DataBroker:12:12:0:0:128:32:96:128:0:32|t]]
local DATA_BROKER_FORMAT = ('%s%%d   %s%%d   %s%%d'):format(ICON1, ICON2, ICON4)

function DataBroker:OnInitialize()
    self.db = Profile:GetCharacterDB()

    local BrokerObject = LDB:NewDataObject('RaidBuilder', {
        type = 'data source',
        text = ADDON_NAME,
        icon = [[Interface\AddOns\RaidBuilder\Media\Icon]],

        OnEnter = function(owner)
            local isLeader = EventCache:GetCurrentEvent()
            local eventCount = EventCache:GetEventCount()
            local favCount = EventCache:GetFavoriteCount()
            local groupCount = GetNumGroupMembers()
            local appliedCount = isLeader and MemberCache:GetMemberCount() or AppliedCache:Count()
            local appliedText = isLeader and L['申请人数'] or L['申请中活动']
            local anchor = owner:GetBottom() < GetScreenHeight() / 2 and 'ANCHOR_TOP' or 'ANCHOR_BOTTOM'
            GameTooltip:SetOwner(owner, anchor)
            GameTooltip:SetText(ADDON_NAME)
            GameTooltip:AddDoubleLine(ICON1 .. appliedText, appliedCount, 1, 1, 1, 1, 1, 1)
            GameTooltip:AddDoubleLine(ICON2 .. L['活动总数'], eventCount, 1, 1, 1, 1, 1, 1)
            GameTooltip:AddDoubleLine(ICON3 .. L['团队人数'], groupCount, 1, 1, 1, 1, 1, 1)
            GameTooltip:AddDoubleLine(ICON4 .. L['关注团长的活动'], favCount, 1, 1, 1, 1, 1, 1)
            GameTooltip:Show()
        end,

        OnClick = function(owner, button)
            GameTooltip:Hide()
            if button == 'RightButton' then
                self:ToggleMenu(owner, self:CreateMenuTable())
            else
                self:Toggle()
            end
        end
    })

    LibStub('LibDBIcon-1.0'):Register('RaidBuilder', BrokerObject, self.db.profile.minimap)
    LibStub('NetEaseMinimap-1.0'):Register('RaidBuilder')

    local function AnimParentOnShow(self) self.Anim:Play() end
    local function AnimParentOnHide(self) self.Anim:Stop() end

    local BrokerPanel = CreateFrame('Button', nil, UIParent)
    BrokerPanel:SetSize(150, 26)
    BrokerPanel:SetToplevel(true)
    BrokerPanel:SetFrameStrata('HIGH')
    BrokerPanel:SetClampedToScreen(true)
    BrokerPanel:SetBackdrop{
        bgFile = [[Interface\ChatFrame\ChatFrameBackground]],
        edgeFile = [[Interface\Tooltips\UI-Tooltip-Border]],
        edgeSize = 16, tileSize = 16, tile = true,
        insets = {left = 4, right = 4, top = 4, bottom = 4},
    }
    BrokerPanel:SetBackdropColor(0, 0, 0, 0.3)
    BrokerPanel:SetBackdropBorderColor(1, 0.82, 0)
    if BrokerObject.OnEnter then
        BrokerPanel:SetScript('OnEnter', BrokerObject.OnEnter)
        BrokerPanel:SetScript('OnLeave', function()
            GameTooltip:Hide()
        end)
    end
    if BrokerObject.OnClick then
        BrokerPanel:SetScript('OnClick', BrokerObject.OnClick)
        BrokerPanel:RegisterForClicks('anyUp')
    end

    local BrokerText = BrokerPanel:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')
    BrokerText:SetPoint('CENTER')
    BrokerText:SetText(BrokerObject.text)

    local BrokerFlash = CreateFrame('Frame', nil, BrokerPanel)
    BrokerFlash:Hide()
    BrokerFlash:SetAllPoints(true)
    BrokerFlash.bg = BrokerFlash:CreateTexture(nil, 'BACKGROUND')
    BrokerFlash.bg:SetPoint('BOTTOM', 0, 2)
    BrokerFlash.bg:SetPoint('LEFT')
    BrokerFlash.bg:SetPoint('RIGHT')
    BrokerFlash.bg:SetHeight(30)
    BrokerFlash.bg:SetVertexColor(1.00, 0.89, 0.18)
    BrokerFlash.bg:SetTexture([[INTERFACE\CHATFRAME\ChatFrameTab-NewMessage]])
    BrokerFlash.bg:SetBlendMode('ADD')
    BrokerFlash.Anim = BrokerFlash:CreateAnimationGroup()
    BrokerFlash.Anim:SetLooping('BOUNCE')
    BrokerFlash.Alpha = BrokerFlash.Anim:CreateAnimation('Alpha')
    BrokerFlash.Alpha:SetDuration(0.75)
    BrokerFlash.Alpha:SetChange(-0.7)
    BrokerFlash:SetScript('OnShow', AnimParentOnShow)
    BrokerFlash:SetScript('OnHide', AnimParentOnHide)

    LibStub('LibWindow-1.1'):Embed(BrokerPanel)
    BrokerPanel:RegisterConfig(self.db.profile.settings.storage)
    BrokerPanel:MakeDraggable()
    BrokerPanel:RestorePosition()

    self:RegisterEvent('GROUP_ROSTER_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_MEMBER_LIST_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_EVENT_LIST_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_APPLIED_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_FAVORITES_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_NEW_VERSION')
    self:RegisterMessage('RAIDBUILDER_SETTING_CHANGED')
    self:RegisterMessage('RAIDBUILDER_WEBSUPPORT_UPDATE')

    self.BrokerObject = BrokerObject
    self.BrokerPanel = BrokerPanel
    self.BrokerText = BrokerText
    self.BrokerFlash = BrokerFlash

    LDB.RegisterCallback(self, 'LibDataBroker_AttributeChanged_RaidBuilder', 'OnDataBrokerChanged')

    self.Minimap = LibStub('LibDBIcon-1.0'):GetMinimapButton('RaidBuilder')

    if not self.db.profile.settings.minimapPack then
        self.Minimap:SetParent(UIParent)
    end
end

function DataBroker:OnDataBrokerChanged(_, name, key, value, object)
    if key == 'text' then
        if not self.notCompat then
            self.BrokerText:SetText(value)
        end
    elseif key == 'flash' then
        self.BrokerFlash:SetShown(value)
    end
end

function DataBroker:Toggle()
    if self.notCompat then
        self:ShowNewVersion(self.url)
    else
        RaidBuilder:ToggleModule('MainPanel')
    end
end

function DataBroker:Refresh()
    local memberCount = MemberCache:GetMemberCount()
    local eventCount = EventCache:GetEventCount()
    local favCount = EventCache:GetFavoriteCount()
    local appliedCount = EventCache:GetCurrentEvent() and memberCount or AppliedCache:Count()

    self.BrokerObject.text = DATA_BROKER_FORMAT:format(appliedCount, eventCount, favCount)
    self.BrokerObject.flash = memberCount > 0 or nil
end

function DataBroker:RAIDBUILDER_NEW_VERSION(_, version, url, isCompat)
    version = format('%.02f', tonumber(version) or 0)
    if not isCompat then
        self.BrokerObject.text = L['发现新版本']

        self.notCompat = not isCompat
        self.url = url

        self:ShowNewVersion(url)
    end
    System:Logf(L['发现新版本: %s，请及时下载更新\n%s'], version, url)
end

function DataBroker:RAIDBUILDER_SETTING_CHANGED(_, key, value, onUser)
    if key == 'minimap' then
        self.Minimap:SetShown(value)
    elseif key == 'panel' then
        self.BrokerPanel:SetShown(value)
    elseif key == 'minimapPack' or key == 'socialEnabled' then
        if onUser then
            GUI:CallWarningDialog(L['这项设置将在下次载入插件时生效。'], true)
        end
    elseif key == 'panelLock' then
        self.BrokerPanel:SetMovable(not value)
        if value then
            self.BrokerPanel:SetScript('OnDragStart', nil)
            self.BrokerPanel:SetScript('OnDragStop', nil)
        else
            self.BrokerPanel:MakeDraggable()
        end
    end
end

function DataBroker:RAIDBUILDER_WEBSUPPORT_UPDATE(_, isWorking)
    self.BrokerObject.icon = isWorking and [[Interface\Addons\RaidBuilder\Media\WebEvent]] or [[Interface\Addons\RaidBuilder\Media\Icon]]
end

function DataBroker:ShowNewVersion(url)
    GUI:CallUrlDialog(url, L['发现集合石组团新版本，您当前的版本不兼容，请按<|cff00ff00Ctrl+C|r>复制下载链接更新新版本以继续使用'], 1)
end

function DataBroker:CreateMenuTable()
    local event = EventCache:GetCurrentEvent()
    local paused = EventCache:IsCurrentEventPaused()
    return {
        {
            text = L['打开主界面'],
            func = function()
                self:Toggle()
            end
        },
        {
            text = L['分享插件'],
            func = function()
                RaidBuilder:ShowModule('SharePanel',
                    L['分享插件'],
                    L.ADDON_SHARE_CONTENT,
                    true)
            end
        },
        {
            text = L['活动通告'],
            disabled = not GroupCache:GetCurrentEventCode() or paused,
            func = function()
                local content = GroupCache:GetAnnouncementContent()
                if not content then
                    return
                end
                RaidBuilder:ShowModule('SharePanel', L['活动通告'], content)
            end
        },
        {
            text = L['易信推送'],
            disabled = not event or paused,
            func = function()
                RaidBuilder:ShowModule('YixinConfirm', Profile:IsYiXinValid(), L['今日已达发送上限'])
            end
        },
        {
            text = paused and L['恢复招募'] or L['暂停招募'],
            disabled = not event or Logic:IsEventStatusLockdown() or event:IsMemberFull(),
            func = function()
                Logic:ToggleEventStatus()
            end
        },
        {
            text = L['解散活动'],
            disabled = not event,
            confirm = L['你确定要解散这个活动？'],
            func = function(result)
                if result then
                    Logic:DisbandEvent()
                end
            end
        },
    }
end
