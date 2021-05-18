#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

execute if score @s programlaunched matches 0 run function commands:dodgegame/setup

scoreboard players set @e[tag=screen] color 0

execute as @s[scores={dodgeInstant=1,dodgeScore=..50}] run schedule function commands:dodgegame/instantiate 50t
execute as @s[scores={dodgeInstant=1,dodgeScore=..100}] if score @s dodgeScore matches 51.. run schedule function commands:dodgegame/instantiate 45t
execute as @s[scores={dodgeInstant=1,dodgeScore=..150}] if score @s dodgeScore matches 101.. run schedule function commands:dodgegame/instantiate 40t
execute as @s[scores={dodgeInstant=1,dodgeScore=..200}] if score @s dodgeScore matches 151.. run schedule function commands:dodgegame/instantiate 35t
execute as @s[scores={dodgeInstant=1,dodgeScore=..250}] if score @s dodgeScore matches 201.. run schedule function commands:dodgegame/instantiate 30t
execute as @s[scores={dodgeInstant=1,dodgeScore=..300}] if score @s dodgeScore matches 251.. run schedule function commands:dodgegame/instantiate 25t
execute as @s[scores={dodgeInstant=1}] if score @s dodgeScore matches 301.. run schedule function commands:dodgegame/instantiate 20t

execute as @s[scores={programTick=1,dodgeScore=..50}] run schedule function commands:dodgegame/tick 7t
execute as @s[scores={programTick=1,dodgeScore=..100}] if score @s dodgeScore matches 51.. run schedule function commands:dodgegame/tick 6t
execute as @s[scores={programTick=1,dodgeScore=..150}] if score @s dodgeScore matches 101.. run schedule function commands:dodgegame/tick 5t
execute as @s[scores={programTick=1,dodgeScore=..200}] if score @s dodgeScore matches 151.. run schedule function commands:dodgegame/tick 4t
execute as @s[scores={programTick=1,dodgeScore=..250}] if score @s dodgeScore matches 201.. run schedule function commands:dodgegame/tick 3t
execute as @s[scores={programTick=1,dodgeScore=..300}] if score @s dodgeScore matches 251.. run schedule function commands:dodgegame/tick 2t
execute as @s[scores={programTick=1}] if score @s dodgeScore matches 301.. run schedule function commands:dodgegame/tick 1t

scoreboard players set @s programTick 0
scoreboard players set @s dodgeInstant 0

execute as @e[tag=sprite,tag=dodge,scores={dodgeLane=1}] at @s run tp @s 5 ~ ~
execute as @e[tag=sprite,tag=dodge,scores={dodgeLane=2}] at @s run tp @s 13 ~ ~
execute as @e[tag=sprite,tag=dodge,scores={dodgeLane=3}] at @s run tp @s 21 ~ ~

execute as @e[tag=sprite,tag=dodge,tag=!enemy,scores={dodgeLane=2..}] if score @e[tag=manager,limit=1] keyPressed matches 2 run scoreboard players remove @s dodgeLane 1
execute as @e[tag=sprite,tag=dodge,tag=!enemy,scores={dodgeLane=..2}] if score @e[tag=manager,limit=1] keyPressed matches 4 run scoreboard players add @s dodgeLane 1

execute as @e[tag=sprite,tag=dodge,tag=enemy,scores={yPos=..4}] if score @s yPos matches 1.. if score @s dodgeLane = @e[tag=sprite,tag=dodge,tag=!enemy,limit=1] dodgeLane run function commands:dodgegame/collision