------------------------------------------------------------------------------
-- This file is part of the PharaohStroy MMORPG client                      --
-- Copyright ?2020-2022 Prime Zeng                                          --
--                                                                          --
-- This program is free software: you can redistribute it and/or modify     --
-- it under the terms of the GNU Affero General Public License as           --
-- published by the Free Software Foundation, either version 3 of the       --
-- License, or (at your option) any later version.                          --
--                                                                          --
-- This program is distributed in the hope that it will be useful,          --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of           --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            --
-- GNU Affero General Public License for more details.                      --
--                                                                          --
-- You should have received a copy of the GNU Affero General Public License --
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.    --
------------------------------------------------------------------------------

dofile("scripts/Tools/Class.lua")

local Vector = require("Vector")
local Sprite = require("Sprite")
local Tile = class("Tile",Sprite)


function Tile:ctor(node,destNode)
    local pos = Vector.new(node["x"]:toInt(),  node["y"]:toInt())
    Sprite.ctor(self,destNode,pos)
    self.z = 0
    local zNode = destNode["z"]
    if zNode == nil then
        self.z = destNode["zM"]:tonInt()
    else
        self.z = zNode:toInt()
    end

   
end


return Tile