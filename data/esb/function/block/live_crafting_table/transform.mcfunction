summon item_display ~-.0001 ~.5 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/live_crafting_table"}},Tags:[block,side.-x],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.001f,1f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~-.0001 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/live_crafting_table"}},Tags:[live_crafting_table,block,side.-y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,0.001f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~.5 ~-.0001 {item:{id:"command_block",components:{item_model:"esb:block/live_crafting_table"}},Tags:[block,side.-z],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.001f],translation:[0f,0f,0f]}}
summon item_display ~1.0001 ~.5 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/live_crafting_table"}},Tags:[block,side.x],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.001f,1f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~1.0001 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/live_crafting_table"}},Tags:[block,side.y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,0.001f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~.5 ~1.0001 {item:{id:"command_block",components:{item_model:"esb:block/live_crafting_table"}},Tags:[block,side.z],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.001f],translation:[0f,0f,0f]}}
setblock ~ ~ ~ barrel{CustomName:'[{"translate":"space.-8","font": "default"},{"text":"\\u0001","font":"esb:gui","color": "white"},{"translate":"space.-169","font": "default"},{"translate":"esb:live_crafting_table","font":"default","color": "#2b2b2b"}]'}
particle item{item:{id:"command_block",components:{item_model:"esb:block/live_spruce/leaves"}}} ~.5 ~.5 ~.5 .6 .6 .6 .03 30
playsound minecraft:block.chorus_flower.grow block @a ~ ~ ~ 1 1.2
advancement grant @a[distance=..7] only esb:lore/root
kill @s