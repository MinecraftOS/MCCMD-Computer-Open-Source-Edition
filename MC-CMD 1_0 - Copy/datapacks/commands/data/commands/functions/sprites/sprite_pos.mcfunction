#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

execute store result score @s xPos run data get entity @s Pos[0]
scoreboard players add @s xPos 3

execute store result score @s yPos run data get entity @s Pos[1]
scoreboard players remove @s yPos 56