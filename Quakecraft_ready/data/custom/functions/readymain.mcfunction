# Unthrowable items
execute as @e[type=item,nbt={Item:{tag:{Unthrowable:1b}}}] run data merge entity @s {PickupDelay:0s}
execute if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.0 with air

# Waiting room options
execute if score STARTED data matches 1 if score INGAME data matches 0 run clear @a
execute if score STARTED data matches 0 run effect give @a minecraft:saturation 3 3 true
execute if score EVENT_STARTED data matches 0 if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.4 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键使用（无法撤销）"}]'}}
execute if score EVENT_STARTED data matches 1 if score PLAYED_QUAKECRAFT data matches 0..1 if score STARTED data matches 0 if score INGAME data matches 0 run item replace entity @a[scores={ready=0}] hotbar.4 with minecraft:carrot_on_a_stick{Ready:1b,Unthrowable:1b,display:{Name:'[{"text":"§a§l准备"},{"text":" - "},{"text":"§7右键使用（无法撤销）"}]'}}
clear @a[scores={ready=1}]

# Getting ready
execute as @a[scores={carrot_stick=1,ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"✔","color":"green"},{"text":"] "},{"selector":"@s","color":"gold"},{"text":" 迫不及待想展示自己的神射手才能！"}]
scoreboard players set @a[scores={carrot_stick=1}] ready 1
scoreboard players set @a[scores={carrot_stick=1,ready=1}] carrot_stick 0

# Starting game
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set STARTED data 1
execute unless entity @a[tag=!spec,scores={ready=0}] run tellraw @a [{"text":"[","color":"white"},{"text":"⚔","color":"yellow"},{"text":"] "},{"text":" 所有玩家准备就绪，游戏即将开始！","color":"green"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a reset
execute unless entity @a[tag=!spec,scores={ready=0}] run title @a title {"text":"游戏即将开始！","color":"green","bold":true}
execute if score CHOSEN_MAP data matches 301 unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Quake Town","color":"gold"}]
execute if score CHOSEN_MAP data matches 302 unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Forsaken","color":"gold"}]
execute if score CHOSEN_MAP data matches 303 unless entity @a[tag=!spec,scores={ready=0}] run title @a subtitle [{"text":"地图：","color":"yellow"},{"text":"Ruins","color":"gold"}]
execute unless entity @a[tag=!spec,scores={ready=0}] run schedule function custom:start 5s
execute unless entity @a[tag=!spec,scores={ready=0}] run clear @a
execute unless entity @a[tag=!spec,scores={ready=0}] run scoreboard players set @a ready 0