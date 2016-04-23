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

--TEXT--
text=display.newText( group1,"AMAL MAJEED",200,900)  -- YOU CAN ALSO INSERT ELEMENTS TO A GROUP BY SPECIFYING THE PARENT GROUP NAME IN THE ELEMENT PARAMETER
text:scale(2,2)

group1.x=500
