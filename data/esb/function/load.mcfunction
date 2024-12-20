tellraw @a [{"text":"Every ","color":"gold","bold":true},{"text":"Single ","color":"#af0a28","bold":true},{"text":"Beasts","color":"#1a3a54","bold":true}]
tellraw @a {"text":"by Iva","color":"gray"}
tellraw @a {"color": "yellow", "text": "To support the project:" }
tellraw @a {"color": "yellow","text": "https://www.donationalerts.com/r/prostoiva","clickEvent":{"action":"open_url","value":"https://www.donationalerts.com/r/prostoiva"} }
function esb:scoreboard
schedule function esb:block/live_crafting_table/clear_craft_result 1t