extends RigidBody2D

const FORCE = 2500;

# Called when the node enters the scene tree for the first time.
func _ready():
	#apply_impulse(Vector2(25,0))
	pass

func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("move_up"):
		apply_force(Vector2(0,-FORCE))
	if Input.is_action_just_pressed("move_down"):
		apply_force(Vector2(0,FORCE))
	if Input.is_action_just_pressed("move_right"):
		apply_force(Vector2(FORCE,0))
	if Input.is_action_just_pressed("move_left"):
		apply_force(Vector2(-FORCE,0))
	
