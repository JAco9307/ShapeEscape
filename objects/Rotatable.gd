extends RigidBody3D

@export var initialMass:float = 5
@export var yTorqueMult:float = 20
@export var zTorqueMult:float = 20
@export var mouse_sensitivity = 0.02

var prev_mouse_position
var next_mouse_position

func _ready() -> void:
	mass = initialMass
		
func _input(event):
	if event is InputEventMouseMotion and GlobalVariables.selectedObject == self:
		var torque = Vector3.ZERO
		torque.y = -event.relative.x * yTorqueMult * mouse_sensitivity
		torque.z = -event.relative.y * zTorqueMult * mouse_sensitivity
		apply_torque(torque)
		
		
func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if Input.is_action_pressed("LMB"):
			prev_mouse_position = get_viewport().get_mouse_position()
			GlobalVariables.selectedObject = self
			
