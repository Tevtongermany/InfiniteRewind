extends CharacterBody2D

const WalkSpeed:float = 200
const Jump_Force:float = 400

func _ready():
	pass


func _process(delta):
	pass
	
func _physics_process(delta):
	OnMoveEvent()
	OnJumpEvent()

	move_and_slide()

func OnMoveEvent():
	var input_vector = Input.get_axis("MoveLeft", "MoveRight")
	velocity.x = input_vector * WalkSpeed


func OnJumpEvent():
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y
		
		
func ApplyGravity(delta):
	if not is_on_floor():
		velocity.y += ProjectSettings
