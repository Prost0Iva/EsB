summon item_display ~-.0001 ~.5 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/copper_furnace"}},Tags:[block,side.-x],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.001f,1f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~-.0001 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/copper_furnace"}},Tags:[copper_furnace,block,side.-y,ns],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,0.001f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~.5 ~-.0001 {item:{id:"command_block",components:{item_model:"esb:block/copper_furnace"}},Tags:[block,side.-z],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.001f],translation:[0f,0f,0f]}}
summon item_display ~1.0001 ~.5 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/copper_furnace"}},Tags:[block,side.x],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.001f,1f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~1.0001 ~.5 {item:{id:"command_block",components:{item_model:"esb:block/copper_furnace"}},Tags:[block,side.y],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,0.001f,1f],translation:[0f,0f,0f]}}
summon item_display ~.5 ~.5 ~1.0001 {item:{id:"command_block",components:{item_model:"esb:block/copper_furnace"}},Tags:[block,side.z],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.001f],translation:[0f,0f,0f]}}
setblock ~ ~ ~ furnace{CustomName:'[{"text":"\\u0002","font":"esb:gui","color": "white"}]'}
particle item{item:{id:"command_block",components:{item_model:"esb:charged_copper_ingot"}}} ~.5 ~.5 ~.5 .6 .6 .6 .03 30
playsound entity.lightning_bolt.thunder block @a ~ ~ ~ 1 2
advancement grant @a[distance=..7] only esb:lore/copper_furnace
kill @s