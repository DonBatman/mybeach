local umbrella_box = {-0.7, 0.4, -0.7, 0.7, 0.7, 0.7}

local towel_box = {-0.3, -0.5, -0.5, 0.3, -0.45, 0.5}

local ball_box = {-0.4, -0.5, -0.4, 0.4, 0.3, 0.4}

local radio_box = {-0.3, -0.5, -0.3, 0.3, 0, 0.3}

local cup_box = {-0.1, -0.5, -0.1, 0.1, -0.1, 0.1}

local shell_box = {-0.1, -0.5, -0.1, 0.1, -0.3, 0.1}

local bag_box = {-0.3, -0.5, -0.1, 0.3, 0, 0.1}

local beach_stuff = {
					{"umbrella", "Umbrella", "umbrella", "umbrella", umbrella_box},
					{"towel", "Towel", "towel", "towel", towel_box},
					{"ball", "Beach Ball", "ball", "ball", ball_box},
					{"radio", "Radio", "radio", "radio", radio_box},
					{"cup_blue", "Blue Cup", "blue_cup", "cup", cup_box},
					{"cup_pink", "Pink Cup", "pink_cup", "cup", cup_box},
					{"shell1", "Sea Shell", "shell1", "shell1", shell_box},
					{"shell2", "Sea Shell", "shell2", "shell2", shell_box},
					{"bag", "Beach Bag", "bag", "bag", bag_box},
					}
					
for i in ipairs(beach_stuff) do
	local nam = beach_stuff[i][1]
	local des = beach_stuff[i][2]
	local img = beach_stuff[i][3]
	local mes = beach_stuff[i][4]
	local box = beach_stuff[i][5]

core.register_node("mybeach:"..nam,{
	description = des,
	tiles = {"mybeach_"..img..".png"},
	drawtype = "mesh",
	mesh = "mybeach_"..mes..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 3, choppy = 3, oddly_breakable_by_hand = 3},
	selection_box = {
		type = "fixed",
		fixed = {box}},
	collision_box = {
		type = "fixed",
		fixed = {box}},
})


if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"mybeach:"..nam}, 1},
	})
end
end
