extends Area2D

class_name InteractionArea

@export var interaction_text:String = "interact"
@export var interaction_text_position: float = -100
@onready var Preview_Text:Label = $PreviewText


var interact: Callable = func():
	pass


func _process(delta):
	pass
	
func _on_body_entered(body):
	InteractManager.reg_area(self)


func _on_body_exited(body):
	InteractManager.unreg_area(self)
