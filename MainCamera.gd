extends Camera3D

var offset = Vector3 (5, 25, 0)

func _process(_delta: float) -> void:
	if Input.is_action_pressed("Zoom"):
		offset = Vector3 (5, 50, 0)
	elif Input.is_action_pressed("ZoomIn"):
		offset = Vector3 (2, 8, 0)
	else:
		offset = Vector3 (5, 25, 0)
	global_position = GlobalVariables.player.get_object_position() + offset
