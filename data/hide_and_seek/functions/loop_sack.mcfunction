#green: -12
#dark_red: -6
#red: -14

#setcolor when shot
execute as @a[tag=hider,nbt={ActiveEffects:[{Id:24,Amplifier:0b,Duration:199}]}] run function hide_and_seek:got_shot

#end game without hiders
execute unless entity @a[tag=hider] run title @a title {"text": "Seekers win!","color": "red"}
execute unless entity @a[tag=hider] run function hide_and_seek:end_round