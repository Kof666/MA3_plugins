--- Module that park selected fixtures in MA3 as plugin
-- @module unparkFixture

--- Script that parks selected fixtures.
-- @function park
-- @return function Returns true if successful.
return function ()

    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }

    local inputFields = {
        {name = "Fixture number", value = "1234", whiteFilter = "0123456789", vkPlugin = "NumericInput"}
    }

    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "Park",
        message = 'Fixture to unpark',
        commands = defaultCommandButtons,
        inputs = inputFields,
    }

    local returnTable = MessageBox(messageTable)

    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

    if returnTable.success and returnTable.result == 2 then
        for name,value in pairs(returnTable.inputs) do
            Printf("Input '%s' = '%s'",name,tostring(value))
        Cmd("unpark " .. value)
        end
    elseif returnTable.success and returnTable.result == 1 then
        Printf('Park is cancelled!')
    end

end