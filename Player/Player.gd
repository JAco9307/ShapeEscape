extends Node3D
class_name Player

var playerObject

var monies = 0

signal hpupdate

func _ready() -> void:
	GlobalVariables.player = self
	playerObject = $Horse

func _process(delta: float) -> void:
	if playerObject.global_position.y <= -100:
		playerObject.global_position = Vector3(0, 5, 0)
	
	var rotationDif = playerObject.angular_velocity 
	
	monies += (rotationDif.length() * delta)/6.2
	
	if playerObject.health != -1:
		playerObject.health -= (rotationDif.length() * delta)/6.2
		hpupdate.emit(playerObject.health, playerObject.maxhealth)
		
	
	if playerObject.health != -1 and playerObject.health <= 0:
		var shapes = GlobalVariables.shapes
		var shape = shapes[0].scene.instantiate()
		shape.physics_material_override.friction = shapes[0].friction
		shape.physics_material_override.bounce = shapes[0].bounce
		shape.initialMass = shapes[0].weight
		playerObject.health = shapes[0].health
		playerObject.maxhealth = shapes[0].health
		GlobalVariables.player.change_object(shape)
	
	if monies >= 1:
		monies -= 1
		GlobalVariables.money += 1

func get_object_position():
	return playerObject.global_position

func change_object(object):
	var objectPosition = playerObject.position
	var objectRotation = playerObject.rotation
	var objectVelocity = playerObject.linear_velocity 
	remove_child(playerObject)
	
	add_child(object)
	object.position = objectPosition + Vector3(0, 2, 0)
	object.rotation = objectRotation
	object.linear_velocity  = objectVelocity

	playerObject = object
