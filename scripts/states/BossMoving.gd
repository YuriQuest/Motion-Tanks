extends State 

func enter_state():
	print("Entering Moving State")

func update_state(delta: float):
	if owner.player:
		var distance = owner.position.distance_to(owner.player.position)
		if distance > owner.player_range:
			owner.state_machine.set_state("IdleState")
		#elif distance < owner.player_range / 2:
		#    owner.state_machine.set_state("FleeingState")
		else:
			owner.move_towards(owner.player.position, delta)
			

func exit_state():
	print("Exiting Moving State")
