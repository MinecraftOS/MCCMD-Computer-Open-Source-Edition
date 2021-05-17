#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

#Set Color
execute as @e[tag=sprite] at @s run function commands:sprites/sprite_pos
function commands:draw_colors

#Run Programs
execute as @e[tag=manager,scores={on=1}] if score @s program matches 1 run function commands:dodgegame/main

#Set Program
scoreboard players enable @a setprogram
execute as @a unless score @s setprogram matches 0 run scoreboard players operation @e[tag=manager] program = @s setprogram
execute as @a unless score @s setprogram matches 0 run scoreboard players set @e[tag=manager] programlaunched 0
scoreboard players set @a setprogram 0

#Reset Inputs
function commands:reset_inputs