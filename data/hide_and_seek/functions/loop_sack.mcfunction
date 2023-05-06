#green: -12
#dark_red: -6
#red: -14

#setcolor when shot
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] run function hide_and_seek:got_shot
#update seeker count
execute if entity @a[tag=hider,nbt={ActiveEffects:[{Id:24b,Amplifier:0b,Duration:199}]}] run scoreboard players add count seekers 1