extends AnimatedSprite2D

var camera:Camera3D 


func _ready():
	camera = get_viewport().get_camera_3d()

func _process(delta: float) -> void:
	if GlobalVariables.selectedObject == null:
		global_position = get_global_mouse_position()
		frame = 0
		rotation_degrees = 0
	else:
		global_position = camera.unproject_position(GlobalVariables.selectedObject.global_position)
		frame = 1
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
	$Label2.text = str(GlobalVariables.handrot.y)
	$Label3.text = str(GlobalVariables.handrot.z)
		
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if Input.is_action_just_released("LMB"):
				GlobalVariables.selectedObject = null
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
