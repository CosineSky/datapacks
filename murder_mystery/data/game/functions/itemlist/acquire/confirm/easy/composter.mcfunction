execute if entity @s[team=red] unless entity @e[tag=bingo_item,tag=composter,tag=red] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"堆肥桶","color":"green"},{"text":"！","color":"yellow"}]
    execute if entity @s[team=blue] unless entity @e[tag=bingo_item,tag=composter,tag=blue] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"堆肥桶","color":"green"},{"text":"！","color":"yellow"}]
    execute if entity @s[team=green] unless entity @e[tag=bingo_item,tag=composter,tag=green] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"堆肥桶","color":"green"},{"text":"！","color":"yellow"}]
    execute if entity @s[team=yellow] unless entity @e[tag=bingo_item,tag=composter,tag=yellow] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"堆肥桶","color":"green"},{"text":"！","color":"yellow"}]

    execute if entity @s[team=red] unless entity @e[tag=bingo_item,tag=composter,tag=red] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
    execute if entity @s[team=blue] unless entity @e[tag=bingo_item,tag=composter,tag=blue] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
    execute if entity @s[team=green] unless entity @e[tag=bingo_item,tag=composter,tag=green] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
    execute if entity @s[team=yellow] unless entity @e[tag=bingo_item,tag=composter,tag=yellow] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514

    execute if entity @s[team=red] run tag @e[tag=bingo_item,tag=composter] add red
    execute if entity @s[team=blue] run tag @e[tag=bingo_item,tag=composter] add blue
    execute if entity @s[team=green] run tag @e[tag=bingo_item,tag=composter] add green
    execute if entity @s[team=yellow] run tag @e[tag=bingo_item,tag=composter] add yellow

    execute if entity @s[team=red] run execute as @e[tag=bingo_table_entry,tag=red] if entity @s[nbt={item:{id:"minecraft:composter"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
    execute if entity @s[team=blue] run execute as @e[tag=bingo_table_entry,tag=blue] if entity @s[nbt={item:{id:"minecraft:composter"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
    execute if entity @s[team=green] run execute as @e[tag=bingo_table_entry,tag=green] if entity @s[nbt={item:{id:"minecraft:composter"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
    execute if entity @s[team=yellow] run execute as @e[tag=bingo_table_entry,tag=yellow] if entity @s[nbt={item:{id:"minecraft:composter"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}