function commands:createstand/fill_x
scoreboard players set @e[tag=screenMaker] screenWidthC 0
scoreboard players add @e[tag=screenMaker] screenHeightC 1
execute as @e[tag=screenMaker] positioned ~ ~1 ~ if score @s screenHeightC < @s screenHeight run function commands:createstand/fill_y