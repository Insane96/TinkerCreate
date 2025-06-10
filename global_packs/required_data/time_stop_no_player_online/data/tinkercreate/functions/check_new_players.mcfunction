execute as @a[tag=!new_player_check] run scoreboard players add playersJoined Global 1
execute if score playersJoined Global matches 2.. as @a[tag=!new_player_check] run function tinkercreate:new_player_actions
tag @a[tag=!new_player_check] add new_player_check
schedule function tinkercreate:check_new_players 1s