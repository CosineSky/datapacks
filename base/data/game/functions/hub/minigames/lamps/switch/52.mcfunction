execute store result score LAMP_TMP data if block 527 180 -549 minecraft:redstone_block
execute if score LAMP_TMP data matches 0 run setblock 527 180 -549 minecraft:redstone_block
execute if score LAMP_TMP data matches 1 run setblock 527 180 -549 minecraft:air