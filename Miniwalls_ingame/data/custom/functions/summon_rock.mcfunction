time add 12000
summon minecraft:block_display ~ ~ ~ {Tags:["comp","comp1"],block_state:{Name:"minecraft:black_terracotta"},interpolation_duration:30,start_interpolation:0,transformation:[5.333f,-2.666f,0f,-31.333f,5.333f,2.666f,0f,26f,0f,0f,1.885f,-0.943f,1f,1f,1f,1f],brightness:{block:15,sky:15}}
summon minecraft:block_display ~ ~ ~ {Tags:["comp","comp2"],block_state:{Name:"minecraft:black_terracotta"},interpolation_duration:30,start_interpolation:0,transformation:[2.666f,-1.333f,0f,-30.666f,2.666f,1.333f,0f,28f,0f,0f,7.542f,-3.771f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
summon minecraft:block_display ~ ~ ~ {Tags:["comp","comp3"],block_state:{Name:"minecraft:black_terracotta"},interpolation_duration:30,start_interpolation:0,transformation:[1.333f,-5.333f,0f,-28f,1.333f,5.333f,0f,26.667f,0f,0f,3.771f,-1.885f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
summon minecraft:block_display ~ ~ ~ {Tags:["comp","comp4"],block_state:{Name:"minecraft:gold_block"},interpolation_duration:30,start_interpolation:0,transformation:[4f,-4f,0f,-30f,4f,4f,0f,26f,0f,0f,1.508f,-0.754f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
summon minecraft:block_display ~ ~ ~ {Tags:["comp","comp5"],block_state:{Name:"minecraft:gold_block"},interpolation_duration:30,start_interpolation:0,transformation:[4f,-1.067f,0f,-31.467f,4f,1.067f,0f,27.467f,0f,0f,5.657f,-2.828f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
summon minecraft:block_display ~ ~ ~ {Tags:["comp","comp6"],block_state:{Name:"minecraft:gold_block"},interpolation_duration:30,start_interpolation:0,transformation:[1.067f,-4f,0f,-28.533f,1.067f,4f,0f,27.467f,0f,0f,5.657f,-2.828f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
schedule function custom:rock_fall 0.5s
execute at @e[tag=comp,limit=1] run playsound entity.ender_dragon.growl player @a ~ ~ ~ 3.0 1.2 0.5
tellraw @a {"text": "以陨天苍岩星，昭命理昏瞑者。","bold": true,"color": "gold"}