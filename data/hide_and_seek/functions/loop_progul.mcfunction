#move the grace timer down one and update the bossbar
execute if score hide_grace timer matches 1.. run scoreboard players remove hide_grace timer 1
execute store result bossbar hide:grace value run scoreboard players get hide_grace timer

#grace timer hits 0
execute if score hide_grace timer matches 1 run title @a[tag=!exempt] title {"text":"Ggogogogogogogoogogoogog!","color":"green"}
execute if score hide_grace timer matches 1 run bossbar set hide:grace visible false
execute if score hide_grace timer matches 1 run bossbar set hide:timer visible true

#move the game timer down one and update the bossbar
execute if score hide_grace timer matches 0 if score hide_timer timer matches 1.. run scoreboard players remove hide_timer timer 1
execute store result bossbar hide:timer value run scoreboard players get hide_timer timer

#game timer hits 0
execute if score hide_timer timer matches 0 run title @a[tag=!exempt] title {"text":"Time's up!","color":"yellow"}
execute if score hide_timer timer matches 0 run function hide_and_seek:end_round