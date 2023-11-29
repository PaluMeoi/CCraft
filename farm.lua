local function move()
    turtle.forward()
    turtle.placeDown()
end

local function turnAround()
    turtle.turnRight()
    move()
    turtle.turnRight()
end

while true do
    if turtle.detect() then
        turnAround()
    else
        move()
    end
end

