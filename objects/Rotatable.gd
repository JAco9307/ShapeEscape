extends RigidBody3D

@export var initialMass:float = 5
@export var yTorqueMult:float = 200
@export var zTorqueMult:float = 200

var prev_mouse_position
var next_mouse_position

func _ready() -> void:
	mass = initialMass

func _process(delta):
	if GlobalVariables.selectedObject == self:
		next_mouse_position = get_viewport().get_mouse_position()
		var torque = Vector3()
		torque.y = (next_mouse_position.x - prev_mouse_position.x) * yTorqueMult * delta
		torque.z = (next_mouse_position.y - prev_mouse_position.y) * zTorqueMult * delta
		prev_mouse_position = next_mouse_position
		
		apply_torque(torque)

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		prev_mouse_position = get_viewport().get_mouse_position()
		GlobalVariables.selectedObject = self
