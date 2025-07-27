extends PinJoint2D

@export var limit_cgw: int = -45 #limit in counterglockwise direction
@export var limit_gw: int = 45 #limit in glockwise direction
@export var control_node: Node2D  #literally Node_B

var lastangle = 0

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
		
	# crunch
	var sum = lastangle - control_node.rotation_degrees
	if sum > 200 or sum < -200:
		print("Wrist break")
	lastangle = control_node.rotation_degrees
