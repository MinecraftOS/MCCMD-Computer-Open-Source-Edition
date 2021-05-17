#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b,DisabledSlots:4144959,Tags:["sprite","newSprite","dodge","enemy"]}
tp @e[tag=newSprite] @e[tag=screen,scores={xPos=8,yPos=10},limit=1]
scoreboard players set @e[tag=newSprite] xDim 3
scoreboard players set @e[tag=newSprite] yDim 3
scoreboard players set @e[tag=newSprite] color 15
execute as @e[tag=newSprite] at @s if score @e[tag=manager,limit=1] rand2 matches ..-6 run scoreboard players set @e[tag=newSprite] dodgeLane 1
execute as @e[tag=newSprite] at @s if score @e[tag=manager,limit=1] rand2 matches -5.. if score @e[tag=manager,limit=1] rand2 matches ..5 run scoreboard players set @e[tag=newSprite] dodgeLane 2
execute as @e[tag=newSprite] at @s if score @e[tag=manager,limit=1] rand2 matches 6.. run scoreboard players set @e[tag=newSprite] dodgeLane 3
execute as @e[tag=newSprite] at @s run tp @s ~ ~2 ~
tag @e[tag=newSprite] remove newSprite

execute if score @e[tag=manager,limit=1] rand1 matches 5.. run summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b,DisabledSlots:4144959,Tags:["sprite","newSprite","dodge","enemy"]}
tp @e[tag=newSprite] @e[tag=screen,scores={xPos=8,yPos=10},limit=1]
scoreboard players set @e[tag=newSprite] xDim 3
scoreboard players set @e[tag=newSprite] yDim 3
scoreboard players set @e[tag=newSprite] color 15
execute as @e[tag=newSprite] at @s if score @e[tag=manager,limit=1] rand2 matches ..-6 run scoreboard players set @e[tag=newSprite] dodgeLane 2
execute as @e[tag=newSprite] at @s if score @e[tag=manager,limit=1] rand2 matches -5.. if score @e[tag=manager,limit=1] rand2 matches ..5 run scoreboard players set @e[tag=newSprite] dodgeLane 3
execute as @e[tag=newSprite] at @s if score @e[tag=manager,limit=1] rand2 matches 6.. run scoreboard players set @e[tag=newSprite] dodgeLane 1
execute as @e[tag=newSprite] at @s run tp @s ~ ~2 ~
tag @e[tag=newSprite] remove newSprite

scoreboard players set @e[tag=manager] dodgeInstant 1