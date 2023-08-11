function sum(x, y)
    return x + y
end

function counter()
    local x = 0
    return function ()
       x = x + 1
       return x
    end
end

print(sum(5, 4))

mycounter = counter()
print(mycounter)
print(mycounter())
print(mycounter())
print(mycounter())

