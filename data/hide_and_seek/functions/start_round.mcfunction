#round is active
scoreboard players set HideNSeek isActive 1

#give closest person seeker
tag @p add seeker

#give everone else hider (account for not playing)
tag @a[tag=!seeker,tag=!exempt,x=100,y=98,z=-36,dx=-60,dy=-53,dz=64] add hider

#hider title
title @a[tag=hider] title {"color": "green","text": "Hide!"}
title @a[tag=seeker] title {"color": "red","text": "Wait"}

#reset scores
scoreboard players set hide_grace timer 1800
scoreboard players set hide_timer timer 10800

#bossbars
#bossbar for finding hiding spots
bossbar add hide:grace "Hide"
bossbar set hide:grace color green
bossbar set hide:grace style progress
bossbar set hide:grace max 1800
bossbar set hide:grace players @a[tag=hider]
bossbar set hide:grace players @a[tag=seeker]
bossbar set hide:grace value 1800
#bossbar for hiding timer
bossbar add hide:timer "Timer"
bossbar set hide:timer color red
bossbar set hide:timer style progress
bossbar set hide:timer max 10800
bossbar set hide:timer players @a[tag=hider]
bossbar set hide:timer players @a[tag=seeker]
bossbar set hide:timer value 10800
bossbar set hide:timer visible false

#color buffer
execute as @a run scoreboard players operation @s color_buffer = @s color

#set team colors
scoreboard players set @a[tag=seeker] color -6
scoreboard players set @a[tag=hider] color -12
#seekercount
scoreboard players set count seekers 1

