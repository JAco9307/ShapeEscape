extends RigidBody3D

@export var initialMass:float = 5
@export var yTorqueMult:float = 20
@export var zTorqueMult:float = 20
@export var mouse_sensitivity = 0.02

var prev_mouse_position
var next_mouse_position
var health = -1
var maxhealth = -1

func _ready() -> void:
	contact_monitor = true
	max_contacts_reported = 30
	mass = initialMass
	
	# this shit needs to be generalized so it doesnt care about animation name
	for child in get_children():
		var animplayer = self.find_child("AnimationPlayer")
		if animplayer != null:
			var anim : Animation= animplayer.get_animation("Circle_004Action")
			if anim != null:
				anim.loop_mode =(Animation.LOOP_LINEAR)
				animplayer.play("Circle_004Action")
		
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
