extends Node3D
class_name Jail

signal exploded

@export var health = 20
var explodedAlready = false

func _process(_delta: float) -> void:
	%HealthLabel.text = "HEALTH: " + str(health)

func take_damage(amount):
	health -= amount
	$AudioStreamPlayer.play()
	if health <= 0:
		explode()

func explode():
	if !explodedAlready:
		explodedAlready = true
		exploded.emit()
		remove_child(get_node("Jail"))
