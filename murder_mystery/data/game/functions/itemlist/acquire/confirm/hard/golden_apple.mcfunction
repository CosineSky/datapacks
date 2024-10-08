execute if entity @s[team=red] unless entity @e[tag=bingo_item,tag=golden_apple,tag=red] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"金苹果","color":"green"},{"text":"！","color":"yellow"}]
    execute if entity @s[team=blue] unless entity @e[tag=bingo_item,tag=golden_apple,tag=blue] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"金苹果","color":"green"},{"text":"！","color":"yellow"}]
    execute if entity @s[team=green] unless entity @e[tag=bingo_item,tag=golden_apple,tag=green] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"金苹果","color":"green"},{"text":"！","color":"yellow"}]
    execute if entity @s[team=yellow] unless entity @e[tag=bingo_item,tag=golden_apple,tag=yellow] run tellraw @a [{"text":">> ","bold":true},{"selector":"@s"},{"text":" 成功收集到了物品 - ","color":"yellow"},{"text":"金苹果","color":"green"},{"text":"！","color":"yellow"}]

    execute if entity @s[team=red] unless entity @e[tag=bingo_item,tag=golden_apple,tag=red] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
    execute if entity @s[team=blue] unless entity @e[tag=bingo_item,tag=golden_apple,tag=blue] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
    execute if entity @s[team=green] unless entity @e[tag=bingo_item,tag=golden_apple,tag=green] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514
    execute if entity @s[team=yellow] unless entity @e[tag=bingo_item,tag=golden_apple,tag=yellow] as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.14514

    execute if entity @s[team=red] run tag @e[tag=bingo_item,tag=golden_apple] add red
    execute if entity @s[team=blue] run tag @e[tag=bingo_item,tag=golden_apple] add blue
    execute if entity @s[team=green] run tag @e[tag=bingo_item,tag=golden_apple] add green
    execute if entity @s[team=yellow] run tag @e[tag=bingo_item,tag=golden_apple] add yellow

    execute if entity @s[team=red] run execute as @e[tag=bingo_table_entry,tag=red] if entity @s[nbt={item:{id:"minecraft:golden_apple"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
    execute if entity @s[team=blue] run execute as @e[tag=bingo_table_entry,tag=blue] if entity @s[nbt={item:{id:"minecraft:golden_apple"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
    execute if entity @s[team=green] run execute as @e[tag=bingo_table_entry,tag=green] if entity @s[nbt={item:{id:"minecraft:golden_apple"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
    execute if entity @s[team=yellow] run execute as @e[tag=bingo_table_entry,tag=yellow] if entity @s[nbt={item:{id:"minecraft:golden_apple"}}] run data merge entity @s {item:{id:"minecraft:carrot_on_a_stick",Count:1b}}