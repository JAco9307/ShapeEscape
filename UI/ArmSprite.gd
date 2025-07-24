extends AnimatedSprite2D

var camera:Camera3D 
var axis = Vector3(0,1,0)

func _ready():
	camera = get_viewport().get_camera_3d()

func _process(_delta: float) -> void:
	if GlobalVariables.selectedObject == null: #free hand
		global_position = get_global_mouse_position()
		frame = 0
		rotation_degrees = 0
	else: 	#grabbing something hand
		global_position = camera.unproject_position(GlobalVariables.selectedObject.global_position)
		frame = 1
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
		rotation_degrees = -GlobalVariables.selectedObject.rotation_degrees.y
		
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MouseButton.MOUSE_BUTTON_LEFT:
			if Input.is_action_just_released("LMB"):
				GlobalVariables.selectedObject = null
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
