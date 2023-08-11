function greet(name)
    name = name or 'stranger'
    print('hi ' .. name)
end

greet('mom')
greet('lizzy')
greet()

local myfunc = function() end
myfunc()

-- redeclaring
local myfunc = function() end
myfunc()

local myfunc = function()
    print('finally some meaningful stuff')
end
myfunc()

--[[
nice long form comment to banter on
--]]

function higher_function(fn, execute)
    if execute then
        return fn()
    else
        print(fn)
    end
end

higher_function(myfunc)
higher_function(myfunc, true)

