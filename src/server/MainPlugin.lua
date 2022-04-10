if not plugin then
    error("Weld Deletor must be ran as a plugin!")
end

local Plugin = plugin:CreateToolbar("Weld Deletor")
local Button = plugin:CreateButton("Weld Deletor", "An easy-to-use tool that deletes all Welds from workspace!", "")
local WidgetInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 200, 300, 150, 150)
local Widget = plugin:CreateDockWidgetPluginGui("Weld Deletor", WidgetInfo)
local PluginEnabled = false

-- TODO: Implement ChangeHistoryService
local ChangeHistoryService = game:GetService("ChangeHistoryService")

Button.MouseClick:Connect(function(Click)
    PluginEnabled = true
    Widget.Enabled = true
    
    for _, v in ipairs(workspace:GetDescendants()) do
        if v:IsA("Weld") then
            v:Destroy()
        end
    end
end)