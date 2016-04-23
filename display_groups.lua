-- This is a code to test out display groups in Corona SDK --

--DISPLAY GROUP--
group1=display.newGroup()

--GREYBOX--
greyBox=display.newRect( 200, 500, 400,200 )
greyBox:setFillColor( 0.2 )
greyBox.xScale=2
greyBox.y=greyBox.y+400

--IMAGE--
luaLogo=display.newImage( "index.png",250,600)

group1:insert(greyBox)
group1:insert(luaLogo)

group1.x=500