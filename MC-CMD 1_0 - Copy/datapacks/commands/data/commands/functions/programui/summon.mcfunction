#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

tag @a[tag=!spawnedui] add spawningui
execute as @a[tag=spawningui] at @s run summon donkey ~ ~1 ~ {CustomName:"\"Disk Storage\"",Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Tame:1,ChestedHorse:1b,Tags:["UI","newUI"]}
tag @a[tag=spawningui] add spawnedui
team join nocol @e[tag=UI]

execute as @a[tag=spawningui] run scoreboard players add @e[tag=manager] playerID 1
execute as @a[tag=spawningui] run scoreboard players operation @s playerID = @e[tag=manager,limit=1] playerID
execute as @e[tag=newUI] run scoreboard players operation @s playerID = @e[tag=manager,limit=1] playerID

tag @a[tag=spawningui] remove spawningui
tag @e[tag=newUI] remove newUI