extends CharacterBody2D

const Walk_Speed:float = 100
const Jump_Force:float = 400
var gravity : int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	pass


func _process(delta):
	pass
	
func _physics_process(delta):
	OnMoveEvent()
	OnInteractEvent()
	
	ApplyGravity(delta)
	move_and_slide()

func OnMoveEvent():
	var input_vector = Input.get_axis("MoveLeft", "MoveRight")
	velocity.x = input_vector * Walk_Speed


func OnInteractEvent():
	if Input.is_action_pressed("Interact") and is_on_floor():
		pass
		
		
func ApplyGravity(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
