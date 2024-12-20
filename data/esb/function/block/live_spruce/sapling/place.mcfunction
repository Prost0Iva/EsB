summon item_display ~.5 ~.5 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/live_spruce/sapling"}},Tags:[live_spruce_sapling,block],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}}
summon interaction ~.5 ~ ~.5 {Tags:["live_spruce_sapling"]}
playsound block.grass.place block @a ~ ~ ~ 1 1
kill @s