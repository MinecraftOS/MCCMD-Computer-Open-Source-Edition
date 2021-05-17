#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

execute as @e[tag=sprite] at @s run function commands:sprites/draw_sprite

execute as @e[tag=screen] at @s if score @s color matches 0 run setblock ~ ~ ~ minecraft:white_concrete
execute as @e[tag=screen] at @s if score @s color matches 1 run setblock ~ ~ ~ minecraft:orange_concrete
execute as @e[tag=screen] at @s if score @s color matches 2 run setblock ~ ~ ~ minecraft:magenta_concrete
execute as @e[tag=screen] at @s if score @s color matches 3 run setblock ~ ~ ~ minecraft:light_blue_concrete
execute as @e[tag=screen] at @s if score @s color matches 4 run setblock ~ ~ ~ minecraft:yellow_concrete
execute as @e[tag=screen] at @s if score @s color matches 5 run setblock ~ ~ ~ minecraft:lime_concrete
execute as @e[tag=screen] at @s if score @s color matches 6 run setblock ~ ~ ~ minecraft:pink_concrete
execute as @e[tag=screen] at @s if score @s color matches 7 run setblock ~ ~ ~ minecraft:gray_concrete
execute as @e[tag=screen] at @s if score @s color matches 8 run setblock ~ ~ ~ minecraft:light_gray_concrete
execute as @e[tag=screen] at @s if score @s color matches 9 run setblock ~ ~ ~ minecraft:cyan_concrete
execute as @e[tag=screen] at @s if score @s color matches 10 run setblock ~ ~ ~ minecraft:purple_concrete
execute as @e[tag=screen] at @s if score @s color matches 11 run setblock ~ ~ ~ minecraft:blue_concrete
execute as @e[tag=screen] at @s if score @s color matches 12 run setblock ~ ~ ~ minecraft:brown_concrete
execute as @e[tag=screen] at @s if score @s color matches 13 run setblock ~ ~ ~ minecraft:green_concrete
execute as @e[tag=screen] at @s if score @s color matches 14 run setblock ~ ~ ~ minecraft:red_concrete
execute as @e[tag=screen] at @s if score @s color matches 15 run setblock ~ ~ ~ minecraft:black_concrete