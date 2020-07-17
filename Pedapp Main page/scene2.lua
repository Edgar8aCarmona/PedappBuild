---------------------------------------------------------------------------------
--
-- scene2.lua
--
---------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()
local widget = require("widget")

local image = display.newImageRect( "orange.jpg",
               display.contentWidth, display.contentHeight) 
image.x = display.contentCenterX
image.y = display.contentCenterY

--Function to handle button event
local function handleButtonEvent( event )
    local phase = event.phase
    if "ended" == phase then
        composer.gotoScene( "main", "slideLeft", 1000  )
        print( "escena 2" )
        return true
        end 
    end

--Creating Button
local myButton1 = widget.newButton
{
    left = 35,
    top = 200,
    width = 250,
    height = 90,
    defaultFile = "Boton+rojo+1-1.png",
    overFile = "Boton+rojo+1+presionado.png",
    onEvent = handleButtonEvent,
}


function scene:createScene( event )

end

function scene:enterScene( event )

end

function scene:exitScene( event )
    
end

function scene:destroyScene( event )

end

scene:addEventListener( "createScene", scene )
scene:addEventListener( "enterScene", scene )
scene:addEventListener( "exitScene", scene )
scene:addEventListener( "destroyScene", scene )

return scene