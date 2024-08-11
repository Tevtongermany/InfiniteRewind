@tool
extends Area2D

class_name InteractionArea

@export var interaction_text:String = "interact"
@export var interaction_text_position: Vector2 = Vector2(0,0)
@onready var Preview_Text:Label = $PreviewText

var interact: Callable = func():
	pass


func _process(delta):
	if Engine.is_editor_hint():
		Preview_Text.global_position = interaction_text_position
	if not Engine.is_editor_hint():
		Preview_Text.hide()
	
func _on_body_entered(body):
	InteractManager.reg_area(self)


func _on_body_exited(body):
	InteractManager.unreg_area(self)
