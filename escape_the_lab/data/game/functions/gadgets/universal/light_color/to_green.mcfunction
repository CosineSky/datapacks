# First Area
execute in multi:mountain run setblock 172 122 -76 minecraft:lime_concrete
execute in multi:mountain run setblock 177 121 -87 minecraft:lime_concrete
execute in multi:mountain run setblock 170 121 -93 minecraft:lime_concrete
execute in multi:mountain run setblock 179 119 -103 minecraft:lime_concrete
execute in multi:mountain run setblock 172 119 -109 minecraft:lime_concrete
execute in multi:mountain run setblock 177 122 -116 minecraft:lime_concrete
execute in multi:mountain run setblock 172 123 -119 minecraft:lime_concrete
execute in multi:mountain run setblock 174 123 -131 minecraft:lime_concrete
execute in multi:mountain run setblock 168 123 -126 minecraft:lime_concrete
execute in multi:mountain run setblock 162 123 -136 minecraft:lime_concrete
execute in multi:mountain run setblock 155 123 -129 minecraft:lime_concrete

# Second Area
execute in multi:mountain run setblock 154 159 -63 minecraft:lime_concrete
execute in multi:mountain run setblock 158 159 -67 minecraft:lime_concrete
execute in multi:mountain run setblock 163 159 -67 minecraft:lime_concrete
execute in multi:mountain run setblock 165 159 -71 minecraft:lime_concrete
execute in multi:mountain run setblock 164 159 -75 minecraft:lime_concrete
execute in multi:mountain run setblock 167 158 -82 minecraft:lime_concrete
execute in multi:mountain run setblock 160 157 -82 minecraft:lime_concrete
execute in multi:mountain run setblock 160 156 -90 minecraft:lime_concrete

# Sound
execute as @a[scores={journey_level=3}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute as @a[scores={journey_level=9}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2