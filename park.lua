--- Module that park all active fixtures in programmer in MA3 as plugin
-- @module park

--- Script that parks all active programmer.
-- @function park
-- @return function Returns true if successful.
return function ()
    local messageTable = {
        title = "Park",
        message = "Do you want to park the programmer?",
        commands = {{value = 2, name = "Park"}, {value = 1, name = "Cancel"}},
    }

    local returnTable = MessageBox(messageTable)

    if returnTable.success and returnTable.result == 2 then
        Cmd("Park Active")
    elseif returnTable.success and returnTable.result == 1 then
        Printf('Park is cancelled!')
    end
end