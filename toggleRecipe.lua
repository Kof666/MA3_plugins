--- Module that handles edit recipe toggling in MA3 as plugin
-- @module toggleRecipe

--- Script that toggles the status of a recipe.
-- Require plugin name to be 'Toggle Edit Recipe'
-- Require two apperances named 'red' and 'green' in showfile
-- @function toggle
-- @treturn function Returns true if successful.
return function()
    -- Get the boolean for active/unactive edit recip
	local env = CurrentEnvironment()
	local editRecipe = env:Children()[7].RECIPEEDITING
	
    -- Turns on/off boolean and change plugin collor
    if editRecipe == true then
        Printf('Edit Recipe turned OFF')
        Cmd('EditRecipe Programmer')
        Cmd("Assign Appearance 'red' At Plugin 'Toggle Edit Recipe'")
    elseif editRecipe == false then
        Printf('Edit Recipe turned ON')
        Cmd('EditRecipe Programmer')
        Cmd("Assign Appearance 'green' At Plugin 'Toggle Edit Recipe'")

    end
end
