function love.load()
    sprites = {}
    sprites.background = love.graphics.newImage('sprites/background.png')
    sprites.bullet = love.graphics.newImage('sprites/bullet.png')
    sprites.player = love.graphics.newImage('sprites/player.png')
    sprites.zombie = love.graphics.newImage('sprites/zombie.png')

    -- player object
    player = {}
    player.x = love.graphics.getWidth() / 2
    player.y = love.graphics.getHeight() / 2
    player.sprite = sprites.player
    player.width = player.sprite:getWidth()
    player.height = player.sprite:getHeight()
end

function love.update(dt)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.draw(sprites.background, 0, 0)

    love.graphics.draw(player.sprite, player.x, player.y)
end
