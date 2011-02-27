require "loveosc"
-- Initialization
function love.load()
	
	-- configure a function which is called when a message arrives at the server
	osc.server:setHandler(function() 
		print("receiving osc message")
	end)

	-- example OSC message:
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


	-- sends the var table as an OSC message
	osc.client:send(var)

end



-- Logic
function love.update(dt)
	-- calls the server receive loop, default port is 7771
	osc.server:update(dt)
end

-- Input
function love.keypressed(key)

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
