function double_it(fn)
    function wrapper(val)
        return fn(2, val)
    end
    return wrapper
end

function mul(x, y)
    return x * y
end

print(mul(2, 3))
print(double_it(mul)(3))

mulby2 = double_it(mul)

print(mulby2(9))
print(mulby2(18))

