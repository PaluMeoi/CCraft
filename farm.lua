-- Created by Palurien Meoi

-- Read inventory to set configs
local left = turtle.getItemDetail(14).name
local right = turtle.getItemDetail(15).name
local reset = turtle.getItemDetail(16).name


local function move()
    turtle.forward()
    turtle.placeDown()
end

local function goRight(x)
    turtle.turnRight()
    move()
    if x == 2 then
        turtle.turnRight()
    end
end

local function goLeft(x)
    turtle.turnLeft()
    move()
    if x == 2 then
        turtle.turnLeft()
    end
end

local function refuel()
--     Check there's a block in front
    local status, block = turtle.inspect()
    turtle.suckUp()
    turtle.refuel()
    if block.name == left then
        turtle.turnLeft()
    else
        turtle.turnRight()
    end
end

local function takeAction(blockName)
    if blockName == left then
        goLeft(2)
    elseif blockName == right then
        goRight(2)
    elseif blockName == "minecraft:chest" then
        refuel()
    elseif blockName == reset then
        local status, block = turtle.inspect()
        if block.name == left then
            goLeft(1)
        else
            goRight(1)
        end
    else
        move()
    end
end

while true do
    if turtle.detect() then
        status, block = turtle.inspectUp()
        takeAction(block.name)
    else
        move()
    end
end

