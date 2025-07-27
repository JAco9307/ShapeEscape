extends PinJoint2D

@export var limit_cgw: int = -45 #limit in counterglockwise direction
@export var limit_gw: int = 45 #limit in glockwise direction
@export var control_node: Node2D  #literally Node_B

var rng = RandomNumberGenerator.new()
var lastangle = 0

var sound = [
	preload("res://music/Sounds/Wrist/1.mp3"),
	preload("res://music/Sounds/Wrist/2.mp3"),
	preload("res://music/Sounds/Wrist/3.mp3"),
	preload("res://music/Sounds/Wrist/4.mp3"),
	preload("res://music/Sounds/Wrist/5.mp3"),
	preload("res://music/Sounds/Wrist/6.mp3"),
	preload("res://music/Sounds/Wrist/7.mp3"),
	preload("res://music/Sounds/Wrist/8.mp3"),
	preload("res://music/Sounds/Wrist/9.mp3"),
	preload("res://music/Sounds/Wrist/10.mp3"),
	preload("res://music/Sounds/Wrist/11.mp3")
]

func _process(_delta):	
	# motor
	if control_node.rotation_degrees < limit_cgw - 20:
		control_node.angular_velocity = 4
	elif control_node.rotation_degrees < limit_cgw:
		control_node.angular_velocity = 1
		
	if control_node.rotation_degrees > limit_gw + 20:
		control_node.angular_velocity = -4
	elif control_node.rotation_degrees > limit_gw:
		control_node.angular_velocity = -1
		
	var sum = lastangle - control_node.rotation_degrees
	if sum > 200 or sum < -200:
		var roll = rng.randi_range(10,0)
		$AudioStreamPlayer.stream = sound[roll]
		$AudioStreamPlayer.play()
	lastangle = control_node.rotation_degrees
