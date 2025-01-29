extends CharacterBody2D
class_name Tank

# Signals area
signal health_changed
signal dead

@export var Bullet: PackedScene
@export var aim_path: String

@export var speed: int = 200
@export var rotation_speed: float = 5.0
@export var gun_cooldown: float = 0.5
@export var health: int = 100
@export var rotation_direction = 0

var can_shoot = true
var alive = true

func _ready():
	if $GunTimer:
		$GunTimer.wait_time = gun_cooldown
	
func weapon_look(value):
	if $weapon:
		$weapon.look_at(value)

func control():
	# Esta função será sobrescrita pelos filhos
	pass

func _physics_process(delta):
	if not alive:
		return
	control()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
