extends State

func enter_state():
    print("Entering Fleeing State")

func update_state(delta: float):
    if owner.player:
        owner.flee_from_player(delta)
        #if owner.position.distance_to(owner.player.position) > owner.player_range:
        #    owner.state_machine.set_state("IdleState")
