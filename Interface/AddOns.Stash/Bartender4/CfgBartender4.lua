
U1RegisterAddon("Bartender4", {
    title = "动作条强化插件",
    defaultEnable = 1,
    -- optionsAfterLogin = 1,
    nopic = true,

    tags = { TAG_INTERFACE, TAG_BIG, },
    icon = [[Interface\Addons\Bartender4\Bartender4]],
    desc = "功能强大的动作条调整强化插件。",

    {
        text = "打开设置界面",
        callback = function()
            Bartender4:ChatCommand()
        end,
    },
})