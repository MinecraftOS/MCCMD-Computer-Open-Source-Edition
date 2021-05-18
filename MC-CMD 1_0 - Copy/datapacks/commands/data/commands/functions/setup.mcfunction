#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

summon minecraft:marker -2 57 12 {Tags:["screenMaker"]}
scoreboard players set @e[tag=screenMaker] screenWidth 32
scoreboard players set @e[tag=screenMaker] screenHeight 24
scoreboard players set @e[tag=screenMaker] screenWidthC 0
scoreboard players set @e[tag=screenMaker] screenHeightC 0

execute at @e[tag=screenMaker] run function commands:createstand/fill_y