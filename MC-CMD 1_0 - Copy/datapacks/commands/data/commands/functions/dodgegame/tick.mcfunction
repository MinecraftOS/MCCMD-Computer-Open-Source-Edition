#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

execute as @e[tag=sprite,tag=enemy] at @s run tp @s ~ ~-1 ~
scoreboard players remove @e[tag=sprite,tag=enemy] yPos 1
execute as @e[tag=sprite,tag=enemy,scores={yPos=..-2}] run kill @s

scoreboard players add @e[tag=manager] dodgeScore 1

scoreboard players set @e[tag=manager] programTick 1