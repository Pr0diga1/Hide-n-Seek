#setcolor when shot
execute if score count seekers matches ..2 run scoreboard players set @s color -12
execute if score count seekers matches 3.. run scoreboard players set @s color -6
#set tag when shot
tag @s remove hider
execute if score count seekers matches ..2 run tag @s add seeker
#titles when shot
execute if score count seekers matches ..2 run title @s title {"text":"Grab a bow and find your friends!"}
execute if score count seekers matches 3.. run title @s title {"text":"You're out! (haha)"}
#update count seekers
scoreboard players add count seekers 1