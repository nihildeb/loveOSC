require "loveosc"
-- Initialization
function love.load()

	var = {
		"#bundle",
		os.time(),
		{
	            "/s_new",
		    "s",
		    "default",
		    "i",
		    1001,
		    "i",
		    0,
		    "i",
		    0,
		    "s",
		    "freq",
		    "f",
		    440
		}
	}



	osc.client:send(var)

end

-- Logic
function love.update(dt)
	
end

-- Input
function love.keypressed(key)
	if key=="b" then
		osc.client:send(var)

	end
end

function love.keyreleased()

end

function love.mousepressed()

end

function love.mousereleased()

end

function love.joystickpressed()
end

function love.joystickreleased()
end

-- Scene Drawing
function love.draw()

end
