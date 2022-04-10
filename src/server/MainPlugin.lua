if not plugin then
    error("Weld Deletor must be ran as a plugin!")
end

local Plugin = plugin:CreateToolbar("Weld Deletor")
local Button = plugin:CreateButton("Weld Deletor", "An easy-to-use tool that deletes all Welds from workspace!", "")

-- TODO: Implement ChangeHistoryService
-- local ChangeHistoryService = game:GetService("ChangeHistoryService")

Button.MouseClick:Connect(function(Click)
    for _, v in ipairs(workspace:GetDescendants()) do
        if v:IsA("Weld") then
            v:Destroy()
            print("All Welds deleted!")
        end
    end
end)