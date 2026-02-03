--- Module that changes the visibility in the 3d view in MA3 as plugin
-- @module 3d_visible_on_off

--- Script that changes the visibility of the elements in the 3d view. In this example three diffrent screens(backdrops).
-- In my show three diffrent backdrops called screen1, 2, 3
-- The patch should have a folder called 'orginal' with a sub folder called 'env' where the screens should be for this script to work.
-- I have done 3 diffrent plugins to turn on and off the diffrent screens/backdrops
-- @function 3d_visible_on_off
-- @return function Returns true if successful.


return function()
    local stage = ShowData().LivePatch.Stages[1] -- get the start of the patch
    local orginalMapp = stage.Fixtures["orginal"] -- get the folder 'orginal' in the patch
    
    if orginalMapp and orginalMapp["env"] then
        -- save the screens
        local screen1 = orginalMapp["env"]["Screen1"]
        local screen2 = orginalMapp["env"]["Screen2"]
        local screen3 = orginalMapp["env"]["Screen3"]
        
        if screen1 then
            -- 1 sets the element to visible and 0 not visible
            screen1:Set("Visible3D", 1)
            Printf("Screen1 is visible.")
        end

        if screen2 then
            screen2:Set("Visible3D", 0)
            Printf("Screen2 is not visible.")
        end

        if screen3 then
            screen3:Set("Visible3D", 0)
            Printf("Screen3 is not visible.")
        end
    end
end