extends RigidBody3D

@export var initialMass:float = 5
@export var yTorqueMult:float = 20
@export var zTorqueMult:float = 20

var prev_mouse_position
var next_mouse_position
var health = -1
var maxhealth = -1

func _ready() -> void:
	var mouse_sensitivity = GlobalVariables.mouse_sensitivity
	contact_monitor = true
	max_contacts_reported = 30
	mass = initialMass
	
	for child in get_children():
		var aplayer = self.find_child("AnimationPlayer")
		if aplayer != null:
			var anim = aplayer.get_animation_list()
			if anim != null:
				aplayer.get_animation(anim[0]).loop_mode =(Animation.LOOP_LINEAR)
				aplayer.play(anim[0])

		
func _input(event):
	if event is InputEventMouseMotion and GlobalVariables.selectedObject == self:
		var torque = Vector3.ZERO
		torque.y = -event.relative.x * yTorqueMult * mouse_sensitivity
		torque.z = -event.relative.y * zTorqueMult * mouse_sensitivity
		apply_torque(torque)
		
		
func _on_input_event(_camera: Node, event: InputEvent, _event_position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if Input.is_action_pressed("LMB"):
			prev_mouse_position = get_viewport().get_mouse_position()
			GlobalVariables.selectedObject = self
