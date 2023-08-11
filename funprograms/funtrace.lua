__FLAG_FUNTRACE = true

function __FILE__(level) return debug.getinfo(level, 'S').source end
function __LINE__(level) return debug.getinfo(level, 'l').currentline end
function __FUNC__(level) return debug.getinfo(level, 'n').name end

function funtrace(fn)
    function print_varargs(...)
        local r = ''
        for k, v in ipairs(arg) do
            r = r .. tostring(v) .. '\t'
        end
        return r
    end

    function print_trace(mode, ...)
        if __FLAG_FUNTRACE then
            print(os.date() .. ': [' .. __FUNC__(3) .. '] line ' .. __LINE__(4) .. ', ' .. mode .. ': ', ... )
        end
    end

    local wrapper = function(...)
        print_trace('args', ...)
        local result = fn(...)
        print_trace('result', result)
        return result
    end
    return wrapper
end

-- examples
function add(x, y)
    return x + y
end

local add = funtrace(add)
print(add(2, 7))
print(add(17, 1))

__FLAG_FUNTRACE = false
print(add(1, 26))

