#vve:_class
data modify storage math:class vve_cubes set value []
data modify storage math:class vve_objs set value []

#test_cube
data modify storage math:io temp set value {id:"test_cube",item:{id:"minecraft:command_block",Count:1b}}
data modify storage math:class vve_cubes append from storage math:io temp

#block_item
data modify storage math:class block_items set value ["minecraft:command_block","minecraft:stone","minecraft:piston","minecraft:sticky_piston","minecraft:redstone_block","minecraft:slime_block","minecraft:honey_block","minecraft:furnace","minecraft:barrel","minecraft:note_block","minecraft:composter","minecraft:tnt","minecraft:redstone_lamp","minecraft:grass_block","minecraft:prismarine","minecraft:magma_block","minecraft:soul_soil","minecraft:blackstone","minecraft:bone_block","minecraft:basalt","minecraft:blue_ice","minecraft:ice","minecraft:packed_ice","minecraft:crying_obsidian","minecraft:end_stone","minecraft:warped_nylium","minecraft:crimson_nylium","minecraft:bone_block","minecraft:basalt","minecraft:deepslate_redstone_ore","minecraft:emerald_ore","minecraft:deepslate_emerald_ore","minecraft:coal_ore","minecraft:deepslate_coal_ore","minecraft:iron_ore","minecraft:deepslate_iron_ore","minecraft:copper_ore","minecraft:gold_ore","minecraft:deepslate_gold_ore","minecraft:lapis_ore","minecraft:deepslate_lapis_ore","minecraft:diamond_ore","minecraft:deepslate_diamond_ore","minecraft:nether_gold_ore","minecraft:nether_quartz_ore","minecraft:ancient_debris","minecraft:raw_copper_block","minecraft:oak_log","minecraft:spruce_log","minecraft:birch_log","minecraft:jungle_log","minecraft:acacia_log","minecraft:dark_oak_log","minecraft:mangrove_log","minecraft:mushroom_stem","minecraft:crimson_stem","minecraft:warped_stem","minecraft:brown_mushroom_block","minecraft:red_mushroom_block","minecraft:nether_wart_block","minecraft:warped_wart_block","minecraft:shroomlight","minecraft:cactus","minecraft:chorus_plant","minecraft:chorus_flower","minecraft:dried_kelp_block","minecraft:tube_coral_block","minecraft:brain_coral_block","minecraft:bubble_coral_block","minecraft:horn_coral_block","minecraft:fire_coral_block","minecraft:honeycomb_block","minecraft:sponge","minecraft:bee_nest","minecraft:ochre_froglight","minecraft:verdant_froglight","minecraft:pearlescent_froglight","minecraft:bedrock","minecraft:white_wool","minecraft:light_gray_wool","minecraft:gray_wool","minecraft:black_wool","minecraft:brown_wool","minecraft:red_wool","minecraft:orange_wool","minecraft:yellow_wool","minecraft:lime_wool","minecraft:green_wool","minecraft:cyan_wool","minecraft:light_blue_wool","minecraft:blue_wool","minecraft:purple_wool","minecraft:magenta_wool","minecraft:pink_wool"]

#rgb
function vve:class/rgb

#test_obj
function vve:class/test_obj