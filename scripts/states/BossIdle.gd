extends State

func enter_state():
    print("Entering Idle State")
    owner.direction = Vector2.ZERO  # Stop moving

func update_state(delta: float):
    if owner.player and owner.position.distance_to(owner.player.position) < owner.player_range:
        owner.state_machine.set_state("MovingState")
