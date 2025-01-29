extends Node2D

var current_state: Node2D = null
var boss: CharacterBody2D

func _ready():
	boss = get_parent()  # The boss node is the parent of the StateMachine
	set_state("IdleState")

# Change the current state
func set_state(state_name: String):
	if current_state:
		current_state.exit_state()  # Call exit on the previous state

	var new_state = get_node(state_name)
	if new_state:
		current_state = new_state
		current_state.enter_state()
		print("State changed to:", state_name)
	else:
		print("State", state_name, "not found!")

func _process(delta: float):
	if current_state:
		current_state.update_state(delta)
