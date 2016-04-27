group1=display.newGroup( )
Image1 = display.newImage("SampleImage.png",500,500)
Image2 = display.newImage("SampleImage.png",700,500)
Image2:scale( 0.5,0.5 )
--WHAT HAPPENS WHEN IMAGE IS TOUCHED--

Rectangle=display.newRect( group1,200,200,200,200 )
--WE ARE MAKING THE IMAGE DRAGGABLE--
function imageTouch(event)
	if event.phase=="began" then      --A New Touch Event Has Begun
		display.getCurrentStage( ):setFocus(event.target)	--[[Sets focus on image triggere first so overlapping images
										arent dragged togother]]
	end
	if event.phase=="moved" then      --A New Touch Event Has Begun
		event.target.x=event.x
		event.target.y=event.y
	end
	if event.phase=="ended" then
		display.getCurrentStage( ):setFocus(nil)
	end
end
Image1:addEventListener( "touch",imageTouch )
Image2:addEventListener( "touch",imageTouch )
