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
print(options["width"])
print(options)
	
end
return renderer