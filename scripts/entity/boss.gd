extends Tank

@onready var body = $Body
@onready var turret = $Turret
@onready var area_detect = $area_detect
@onready var timer = $GunTimer
@onready var state_machine = $StateMachine

var player: CharacterBody2D = null
var direction: Vector2 = Vector2.ZERO
var player_range: float = 300.0


func _ready():
	area_detect.body_entered.connect(_on_player_detected)
	area_detect.body_exited.connect(_on_player_lost)
#	timer.timeout.connect(_shoot)

func move_towards(target: Vector2, delta: float):
	var direction_to_target = (target - position).normalized()
	var target_angle = direction_to_target.angle()
	rotation = rotation + rotation_speed * delta * sign(target_angle - rotation)
	
	if abs(target_angle - rotation) < 0.1:
		# Move forward when aligned
		position += Vector2(cos(rotation), sin(rotation)) * speed * delta
	#direction = (target - position).normalized()
	#position += direction * speed * delta

func flee_from_player(delta: float):
	direction = (position - player.position).normalized()
	position += direction * speed * delta

func _on_player_detected(body):
	if body.name == "Player":
		player = body
		state_machine.set_state("MovingState")

func _on_player_lost(body):
	if body == player:
		player = null
		state_machine.set_state("IdleState")

#func _shoot():
#	if not player:
#		return
#	var bullet = preload("res://Bullet.tscn").instance()
#	bullet.position = turret.global_position
#	bullet.rotation = turret.rotation
#	bullet.direction = (player.position - turret.global_position).normalized()
#	get_parent().add_child(bullet)

func take_damage(amount: int):
	health -= amount
	if health <= 0:
		die()

func die():
	queue_free()
