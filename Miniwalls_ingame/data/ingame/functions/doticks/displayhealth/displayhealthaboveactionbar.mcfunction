execute if entity @e[tag=miniwallsguardian] run title @a actionbar [{"text": "各队守卫者血量百分比：   ", "bold": true,"color": "gold"},{"score":{"objective": "MWGuardiansHealthPercent","name": "@e[tag=redguardian,limit=1]"},"color": "red","bold": true},{"text": "   "},{"score":{"objective": "MWGuardiansHealthPercent","name": "@e[tag=yellowguardian,limit=1]"},"color": "yellow","bold": true},{"text": "   "},{"score":{"objective": "MWGuardiansHealthPercent","name": "@e[tag=greenguardian,limit=1]"},"color": "green","bold": true},{"text": "   "},{"score":{"objective": "MWGuardiansHealthPercent","name": "@e[tag=blueguardian,limit=1]"},"color": "blue","bold": true}]
execute unless entity @e[tag=miniwallsguardian] run title @a actionbar {"text": "所有守卫者已死亡！ R.I.P.","bold": true,"color": "gray"}