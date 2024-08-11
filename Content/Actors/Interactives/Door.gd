extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@export var to_open_scene: PackedScene = null


func _ready():
	interaction_area.interact = Callable(self, "_on_interact")


func _process(delta):
	pass

func _on_interact():
	print(to_open_scene)
	if to_open_scene:

		for child in get_tree():
			child.queue_free()
		

		var new_scene_instance = to_open_scene.instantiate()
		get_tree().root.add_child(new_scene_instance)
	else:
		print("No scene assigned to 'to_open_scene'.")
