#round is active
scoreboard players set HideNSeek isActive 1

#give closest person seeker
tag @p add seeker

#give everone else hider (account for not playing)
tag @a[tag=!seeker,tag=!exempt] add hider

#update team colors