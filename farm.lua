function local move()
    turtle.forward()
    turtle.placeDown()
end

function local turnAround()
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

