#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

tag @s add spriteChecking

scoreboard players operation @s xDimHalf = @s xDim
scoreboard players operation @s xDimHalf /= @e[tag=manager] dimDivider

scoreboard players operation @s yDimHalf = @s yDim
scoreboard players operation @s yDimHalf /= @e[tag=manager] dimDivider

scoreboard players operation @s spriteMinX = @s xPos
scoreboard players operation @s spriteMaxX = @s xPos
scoreboard players operation @s spriteMinX -= @s xDimHalf
scoreboard players operation @s spriteMaxX += @s xDimHalf

scoreboard players operation @s spriteMinY = @s yPos
scoreboard players operation @s spriteMaxY = @s yPos
scoreboard players operation @s spriteMinY -= @s yDimHalf
scoreboard players operation @s spriteMaxY += @s yDimHalf

execute as @e[tag=screen] if score @s xPos >= @e[tag=spriteChecking,limit=1] spriteMinX if score @s xPos <= @e[tag=spriteChecking,limit=1] spriteMaxX if score @s yPos >= @e[tag=spriteChecking,limit=1] spriteMinY if score @s yPos <= @e[tag=spriteChecking,limit=1] spriteMaxY run scoreboard players operation @s color = @e[tag=spriteChecking,limit=1] color

tag @s remove spriteChecking