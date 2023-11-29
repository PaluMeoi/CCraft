-- Created by Palurien Meoi

-- Read inventory to set configs
local left = turtle.getItemDetail(14).name
local right = turtle.getItemDetail(15).name
local reset = turtle.getItemDetail(16).name


local function move()
    turtle.forward()
    turtle.placeDown()
end

local function goRight()
    turtle.turnRight()
    move()
end

local function goLeft()
    turtle.turnLeft()
    move()
end

local function refuel()
--     Check there's a block in front
    local status, block = turtle.inspect()
    turtle.suckUp()
    turtle.refuel()
    takeAction(block.name)
end

local takeAction(blockName)
    if blockName == left then
        goLeft()
    elseif blockName == right then
        goRight()
    elseif blockName == "minecraft:chest" then
        refuel()
    else:
        move()
    end

while true do
    if turtle.detect() then
        status, block = turtle.inspectUp()
        takeAction(block.name)
    else
        move()
    end
end
