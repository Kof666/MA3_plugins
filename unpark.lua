--- Module that unpark all active fixtures in programmer in MA3 as plugin
-- @module unpark

--- Script that unparks all active programmer.
-- @function unpark
-- @return function Returns true if successful.
return function ()
    local messageTable = {
        title = "Park",
        message = "Do you want to park the programmer?",
        commands = {{value = 2, name = "Park"}, {value = 1, name = "Cancel"}},
    }

    local returnTable = MessageBox(messageTable)

    if returnTable.success and returnTable.result == 2 then
        Cmd("Unpark Active")
    elseif returnTable.success and returnTable.result == 1 then
        Printf('Unpark is cancelled!')
    end
end