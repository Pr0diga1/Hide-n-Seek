#green: -12
#dark_red: -6
#red: -14
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24,Amplifier:0b,Duration:199}]}] if score count seekers matches ..2 run scoreboard players set @s color -12
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24,Amplifier:0b,Duration:199}]}] if score count seekers matches 3.. run scoreboard players set @s color -6
execute if entity @a[tag=hider,nbt={ActiveEffects:[{Id:24,Amplifier:0b,Duration:199}]}] run scoreboard players add count seekers 1