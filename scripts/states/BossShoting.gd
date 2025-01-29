extends State

func enter_state():
    print("Entering Shooting State")
    owner.timer.start(1.0)  # Start shooting timer

func update_state(delta: float):
    if not owner.player or owner.position.distance_to(owner.player.position) > owner.player_range:
        owner.state_machine.set_state("IdleState")

func exit_state():
    print("Exiting Shooting State")
    owner.timer.stop()
