local renderer = {}
local bgPath=""
local oAWidth = display.contentWidth
local oAHeight = display.contentHeight
local edges = {}
--background
function renderer.bGRound(stageLvl,bG)
	
	bgPath = "backgrounds/campaign/"..stageLvl.."/"..bG..".png"
	local background =display.newImage(bgPath)
	background.height = oAHeight
	background.width = oAWidth
	background.x = oAWidth/2
	background.y = oAHeight/2
	
end
--boarders
function renderer.borders(borders)
	
	--sets the parameters of the created borders
	for i = 1, table.getn(borders), 1 do
		edges[i] = display.newRect( 0, 0, 0, 0 )
		--display.newRect( [parent,] x, y, width, height )
		if borders[i] == "left" then
			edges[i].width = 5
			edges[i].height = oAHeight
			edges[i].x = 0
			edges[i].y = oAHeight/2
		elseif borders[i] == "right" then
			edges[i].width = 5
			edges[i].height = oAHeight
			edges[i].x = oAWidth
			edges[i].y = oAHeight/2
		elseif borders[i] == "top" then
			edges[i].width = oAWidth
			edges[i].height = 5
			edges[i].x = oAWidth/2
			edges[i].y = 0
		elseif borders[i] == "bottom" then
			edges[i].width = oAWidth
			edges[i].height = 5
			edges[i].x = oAWidth/2
			edges[i].y = oAHeight
		else
		end
	end
end

function renderer.gif(location,attribute,sqAttribute)

local options =
	{
		--required parameters
		width = attribute[1],
		height = attribute[2],
		numFrames = attribute[3],
	}
local sequenceData =
	{
		name=sqAttribute,
		start=3,
		count=6,
		time=100,
		loopCount = 0,   -- Optional ; default is 0 (loop indefinitely)
		loopDirection = "bounce"    -- Optional ; values include "forward" or "bounce"
	}	
graphics.newImageSheet( location, options )
display.newSprite( [parent,] imageSheet, sequenceData )

	gifImage = sprite.newSpriteSheet("backgrounds/campaign/portal5.png",127,28)
				spritel = sprite.newSpriteSet(portal, 1, 6)
				sprite.add(spritel, "portall", 1, 6, 600, 0)

	--left portal
			
			  --portal gif
				a02gif1 = sprite.newSprite(spritel)
				a02gif1.x = 100
				a02gif1.y = display.contentHeight/2 + 70
				a02gif1:prepare("portall")
				a02gif1:play()
				a02gif1:setReferencePoint(display.CenterRightReferencePoint)
				

				a02portal1= display.newCircle( 100, display.contentHeight/2 + 50, 5 )
				a02portal1:setReferencePoint(display.CenterRightReferencePoint)
				a02portal1.alpha = 0
	bgPath = "backgrounds/"..loc.."/"..stageLvl.."/"..bG..".png"
	local background =display.newImage(bgPath)
	background.height = oAHeight
	background.width = oAWidth
	background.x = oAWidth/2
	background.y = oAHeight/2
	
end
return renderer