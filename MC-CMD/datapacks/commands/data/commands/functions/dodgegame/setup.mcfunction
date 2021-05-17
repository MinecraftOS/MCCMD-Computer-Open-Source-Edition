#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

schedule function commands:dodgegame/instructions 2s

summon armor_stand 0 0 0 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b,DisabledSlots:4144959,Tags:["sprite","newSprite","dodge"]}
tp @e[tag=newSprite] @e[tag=screen,scores={xPos=8,yPos=2},limit=1]
scoreboard players set @e[tag=newSprite] xDim 3
scoreboard players set @e[tag=newSprite] yDim 3
scoreboard players set @e[tag=newSprite] color 14
scoreboard players set @e[tag=newSprite] dodgeLane 2
tag @e[tag=newSprite] remove newSprite

title @a title {"text":"Dodge Game","bold":true,"color":"green"}
title @a subtitle [{"text":"Use the "},{"text":"arrow keys","color":"blue"},{"text":" to move. Don't get hit!"}]
tellraw @a ["",{"text":"Keyboard","underlined":true,"color":"green"},{"text":"\n\n"},{"text":"    ","color":"blue"},{"text":"[^]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=manager] keyPressed 1"},"hoverEvent":{"action":"show_text","contents":"Up Arrow"}},{"text":"\n","color":"blue"},{"text":"[<]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=manager] keyPressed 2"},"hoverEvent":{"action":"show_text","contents":"Left Arrow"}},{"text":" ","color":"blue"},{"text":"[v]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=manager] keyPressed 3"},"hoverEvent":{"action":"show_text","contents":"Down Arrow"}},{"text":" ","color":"blue"},{"text":"[>]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @e[tag=manager] keyPressed 4"},"hoverEvent":{"action":"show_text","contents":"Right Arrow"}}]

scoreboard players set @s programlaunched 1