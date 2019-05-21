-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Davin Rousseau
-- Created on: May.16th/2019
-- 
-- This file is the program for Assignment 6:
-----------------------------------------------------------------------------------------
display.setDefault("background", 225/255, 137/255, 125/255)

local NumberTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 180, 150, 100 )
NumberTextField.id = "Number textField"

local NumberText = display.newText("# of iterations", display.contentCenterX, display.contentCenterY +150, native.systemFont, 10 )
NumberText.x = 50
NumberText.y = 420
NumberText.id = "Number Text"
NumberText:setFillColor( 1, 1, 1 )

local piSymbol = display.newImageRect( "assets/pi.png", 100, 100 )
piSymbol.x = 150
piSymbol.y = 120

local piTextField = display.newText("Pi", display.contentCenterX, display.contentCenterY +180, native.systemFont, 18)
piTextField.x=110
piTextField.y = 30
piTextField.id = "pi Textfield"
piTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "assets/calculate.png", 160, 120, 120 )
calculateButton.x = display.contentCenterX
calculateButton.y = 300
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

	local iterations
	local number
	local answer

	answer = 0
	iterations = tonumber(NumberTextField.text)
	number = -1

	for calculate = 1, iterations, 1 do
		number = number*-1
		answer = answer +4/(2*calculate-1)*number
		piTextField.text = ("Value of Pi is"..answer) 
	end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )



