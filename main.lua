function love.load()
button = {}
button.y = 150
button.x = 150
button.s = 30

score = 0
timer = 10
gameState = 1

font = love.graphics.newFont(35)
end

function love.update(dt)
  if gameState == 2 then
  if timer > 0 then
  timer = timer - dt
end

      if timer < 0 then
      timer = 0
      gameState = 1
      score = 0
    end
  end
end

function love.draw()
  if gameState == 2 then
  love.graphics.setColor(255, 0, 0)
    love.graphics.circle("fill", button.x, button.y, button.s)
  end

      love.graphics.setFont(font)
    love.graphics.setColor(255, 255, 255)
  love.graphics.print("Score: " .. score)
love.graphics.print("Time: " .. math.ceil(timer), 300, 0)

if gameState == 1 then
  love.graphics.printf("Click anywhere on the screen to begin", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
  end
end

function love.mousepressed(x, y, bu, isTouch)
if bu == 1 and gameState == 2 then
  if Distance (button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.s then
  score = score + 1
  button.x = math.random(button.s, love.graphics.getWidth() - button.s)
  button.y = math.random(button.s, love.graphics.getHeight() - button.s)
  button.s = math.random(15, 50)
    end
  end
  if gameState == 1 then
    gameState = 2
    timer = 10
  end
end

function Distance(x1, y1, x2, y2)
  return math.sqrt((x1 - x2)^2 + (y1 - y2)^2)
end
