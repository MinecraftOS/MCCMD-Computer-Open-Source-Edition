summon minecraft:marker ~ ~ ~ {Tags:["screen","newScreen"]}

scoreboard players operation @e[tag=newScreen] xPos = @e[tag=screenMaker] screenWidthC
scoreboard players add @e[tag=newScreen] xPos 1

scoreboard players operation @e[tag=newScreen] yPos = @e[tag=screenMaker] screenHeightC
scoreboard players add @e[tag=newScreen] yPos 1

tag @e[tag=newScreen] remove newScreen

scoreboard players add @e[tag=screenMaker] screenWidthC 1

execute as @e[tag=screenMaker] positioned ~1 ~ ~ if score @s screenWidthC < @s screenWidth run function commands:createstand/fill_x