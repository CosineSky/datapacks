# Multiplying scores
execute if score PLAYED_GAMES data matches 0 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_10 data
execute if score PLAYED_GAMES data matches 1 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_12 data
execute if score PLAYED_GAMES data matches 2 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_14 data
execute if score PLAYED_GAMES data matches 3 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_16 data
execute if score PLAYED_GAMES data matches 4 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_18 data
execute if score PLAYED_GAMES data matches 5 run scoreboard players operation @a[tag=!spec] round_score_mb *= CONST_20 data
scoreboard players operation @a[tag=!spec] round_score_mb /= CONST_10 data

# Announcing scores
execute as @a[tag=!spec] run scoreboard players operation @s total_score_hub += @s round_score_mb
execute as @a[tag=!spec] run scoreboard players operation @s total_score_event += @s round_score_mb
tellraw @a {"text":"========================================","bold":true,"color":"gold"}
tellraw @a [{"text":">> ","color":"yellow","bold":true},{"text":"本轮及总得分：","color":"white"}]
execute as @a[tag=!spec] run tellraw @a ["",{"selector":"@s","color":"green","bold":true}," - ",{"score":{"name":"@s","objective":"round_score_mb"},"color":"gold","bold":true},{"text":"⭐","color":"yellow"},"/",{"score":{"name":"@s","objective":"total_score_event"},"color":"aqua","bold":true},{"text":"⭐","color":"yellow"}]
tellraw @a {"text":"========================================","bold":true,"color":"gold"}

# Teleporting to waiting room
execute as @e[tag=waiting_room_tt,limit=1] at @s run tp @a @s

# Stopping the game
scoreboard objectives setdisplay list ready
scoreboard objectives setdisplay sidebar
scoreboard players set ROUND_TIME tick_elapsed 920
scoreboard players set ROUND tick_elapsed 1
scoreboard players set @a round_score_mb 0
scoreboard players set @a tick_elapsed 0
scoreboard players set STARTED data 0
scoreboard players set INGAME data 0
scoreboard players set @a has_tnt 0
scoreboard players set @a ready 0
gamemode adventure @a[tag=!spec]
team leave @a
stopsound @a
clear @a

# Event settings
execute if score EVENT_STARTED data matches 1 run title @a title {"text":"TNT Tags","color":"yellow"}
execute if score EVENT_STARTED data matches 1 run title @a subtitle [{"text":"Games: ","color":"gold"},{"score":{"name":"PLAYED_TNT_TAGS","objective":"data"},"color":"green"},{"text":"/3","color":"green"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_TNT_TAGS data matches 3.. run tellraw @a [{"text":"[⭐] "},{"text":"已完成游戏","color":"yellow"},{"text":"TNT Tags","color":"green","bold":true},{"text":"的对决！10秒后将被传送回联赛大厅。","color":"yellow"}]
execute if score EVENT_STARTED data matches 1 if score PLAYED_TNT_TAGS data matches 3.. run schedule function game:general/return_hall 10s