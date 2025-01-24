extends Tank

func control():
	var player = get_node("/root/test_map/Player")

	if $weapon:
		$weapon.look_at(player.global_position)
