#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

execute if score @s programlaunched matches 0 run function commands:dodgegame/setup

scoreboard players set @e[tag=screen] color 0

execute as @s[scores={dodgeInstant=1}] run schedule function commands:dodgegame/instantiate 2s
execute as @s[scores={programTick=1}] run schedule function commands:dodgegame/tick 5t

scoreboard players set @s programTick 0
scoreboard players set @s dodgeInstant 0

execute as @e[tag=sprite,tag=dodge,scores={dodgeLane=1}] at @s run tp @s 0 ~ ~
execute as @e[tag=sprite,tag=dodge,scores={dodgeLane=2}] at @s run tp @s 5 ~ ~
execute as @e[tag=sprite,tag=dodge,scores={dodgeLane=3}] at @s run tp @s 10 ~ ~

execute as @e[tag=sprite,tag=dodge,tag=!enemy,scores={dodgeLane=2..}] if score @e[tag=manager,limit=1] keyPressed matches 2 run scoreboard players remove @s dodgeLane 1
execute as @e[tag=sprite,tag=dodge,tag=!enemy,scores={dodgeLane=..2}] if score @e[tag=manager,limit=1] keyPressed matches 4 run scoreboard players add @s dodgeLane 1

execute as @e[tag=sprite,tag=dodge,tag=enemy,scores={yPos=..4}] if score @s yPos matches 1.. if score @s dodgeLane = @e[tag=sprite,tag=dodge,tag=!enemy,limit=1] dodgeLane run function commands:dodgegame/collision