#green: -12
#dark_red: -6
#red: -14

#setcolor when shot
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] if score count seekers matches ..2 run scoreboard players set @s color -12
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] if score count seekers matches 3.. run scoreboard players set @s color -6
#set tag when shot
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] run tag @s remove hider
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] if score count seekers matches ..2 run tag @s add seeker
#titles when shot
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] if score count seekers matches ..2 run title @s title {"text":"Grab a bow and find your friends!"}
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] if score count seekers matches 3.. run title @s title {"text":"You're out! (haha)"}
#update seeker count
execute if entity @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] run scoreboard players add count seekers 1