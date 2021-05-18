#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

execute as @s[nbt={RootVehicle:{Entity:{id:"minecraft:donkey",Tags:["UI"]}}}] at @s run tp @s ~ ~ ~

scoreboard players operation @e[tag=UI] playerIDSubtract = @e[tag=UI] playerID
scoreboard players operation @e[tag=UI] playerIDSubtract -= @s playerID

execute if entity @s[nbt={SelectedItem:{tag:{CustomItem:1b}}}] run tp @e[tag=UI,scores={playerIDSubtract=0}] @s
execute unless entity @s[nbt={SelectedItem:{tag:{CustomItem:1b}}}] run tp @e[tag=UI,scores={playerIDSubtract=0}] 0 0 0

execute unless entity @e[tag=UI,nbt={Items:[{Slot:2b}]}] run item replace entity @e[tag=UI] horse.0 with minecraft:map{CustomItem:2b,display:{Name:'[{"text":"Enter Program Here","italic":false}]',Lore:['[{"text":"Enter program drive in this","italic":false}]','[{"text":"slot to launch","italic":false}]']}}

execute as @a store result score @s addedProgram run clear @s map{CustomItem:2b} 0
execute as @s[scores={addedProgram=1..}] if entity @e[tag=UI,nbt={Items:[{Slot:2b,tag:{CustomItem:3b}}]}] run scoreboard players set @s setprogram 1

clear @a minecraft:map{CustomItem:2b}