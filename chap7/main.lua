function love.load()
    fruits = {"apple", "banana"}
    table.insert(fruits, "pear")
    table.insert(fruits, "pineapple")
    table.remove(fruits, 2)

    fruits[1] = "tomato"

    x = 100
    y = 50
    move = true

    for i, v in ipairs(fruits) do
        print(i, v)
    end
end

function love.update(dt)
    -- if move then
    --     x = x + 100 * dt
    -- end
    if love.keyboard.isDown("right") then
        x = x + 100 * dt
    elseif love.keyboard.isDown("left") then
        x = x - 100 * dt
    elseif love.keyboard.isDown("up") then
        y = y - 100 * dt
    elseif love.keyboard.isDown("down") then
        y = y + 100 * dt
    end
end

function love.draw()
    -- love.graphics.rectangle("line", x, y, 200, 150)
    for i, frt in ipairs(fruits) do
        love.graphics.print(frt, 100, 100 + (50 * i)) 
    end
end