#round is not active
scoreboard players set HideNSeek isActive 0

#reset tags
tag @a remove hider
tag @a remove seeker

#reset team colors

#reset scores
scoreboard players set hide_grace timer 1800
scoreboard players set hide_timer timer 10800

#bossbars
#bossbar for finding hiding spots
bossbar remove hide:grace
#bossbar for hiding timer
bossbar remove hide:timer

#reset colors
execute as @a run scoreboard players operation @s color = @s color_buffer
#reset seeker count
scoreboard players set count seekers 0