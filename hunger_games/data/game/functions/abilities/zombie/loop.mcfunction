scoreboard players add @e[type=armor_stand,nbt={AbsorptionAmount:0.5f}] tick_elapsed 1
kill @e[type=armor_stand,nbt={AbsorptionAmount:0.5f},scores={tick_elapsed=40..}]

# execute as @e[nbt={AbsorptionAmount:0.5f}] at @s if entity @e[tag=mob,distance=..2] run title @p title ""
# execute as @e[nbt={AbsorptionAmount:0.5f}] at @s if entity @e[tag=mob,distance=..2] run title @p subtitle [{"color":"gold","text":"60"}]

# execute as @e[type=minecraft:armor_stand,nbt={AbsorptionAmount:0.5f}] at @s run scoreboard players remove @e[tag=mob,distance=..2] health 60
# execute as @e[type=minecraft:armor_stand,nbt={AbsorptionAmount:0.5f}] at @s if entity @e[tag=mob,distance=..2] run kill @s

# scoreboard players add timer.ability.iron_punch timer 1