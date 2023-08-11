--[[
for exp1, exp2, exp3 do
end
--]]

for i = 1, 4 do
    print("Hi mom", i)
end

print("-----")
for i = 1, 4, 1 do
    print("Hi mom", i)

end

print("-----")
for i = 1, 4, 2 do
    print("Hi mom", i)
end

print("-----")
for i = 1, 1, 1 do
    print("Hi mom", i)
end

print("-----")
for i = 4, 1, 1 do
    print("Hi mom", i)
end

print("-----")
for i = 4, 1, -1 do
    print("Hi mom", i)
end

print("-----")
for i = -4, 4, 1 do
    print("Hi mom", i)
end

print("-----")
for i = 4, -4, -1 do
    print("Hi mom", i)
end

--[[
while exp do
end
--]]

print("-----")
local i = 10
while i > 0 do
    print("hi mom", i)
    i = i - 1
end

print("-----")
local i = 10
repeat
    print("hi mom", i)
    i = i - 1
until(i == 0)

print("-----")
local j = 1
repeat
    print(j)
    j = j + 1
until(j == 11)

