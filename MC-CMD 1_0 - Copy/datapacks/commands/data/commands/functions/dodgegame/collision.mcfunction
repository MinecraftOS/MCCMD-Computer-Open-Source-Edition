#-------------------------------------------#
#                                           #
#  This function was coded by EpicGamer373  #
#                                           #
#-------------------------------------------#

schedule clear commands:dodgegame/instantiate
schedule clear commands:dodgegame/tick
title @a title {"text":"You hit a car!"}
kill @e[tag=sprite,tag=!enemy]

tellraw @a ["",{"text":"Your score was "},{"score":{"name":"@e[tag=manager,limit=1]","objective":"dodgeScore"}},{"text":"\n"},{"text":"[Restart]","color":"green","clickEvent":{"action":"run_command","value":"/function commands:dodgegame/restart"}},{"text":" ","color":"green"},{"text":"[Quit]","color":"green","clickEvent":{"action":"run_command","value":"/function commands:dodgegame/quit"}}]