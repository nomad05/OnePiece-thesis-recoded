-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local module = require "image_renderer"

--background image
module.bGRound("level1","hallway")

--boarders
--ex border[number of border] = {"left","right","top","bottom"}
local border = {"left","right","top","bottom"}

local everything = {50,50,3}
module.gif("level1",everything,"ssss")
module.borders(border)