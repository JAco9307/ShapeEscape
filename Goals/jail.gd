extends Node3D
class_name Jail

@export var health = 20

func take_damage(amount):
	health -= amount
	if health <= 0:
		explode()

func explode():
	remove_child(get_node("Jail"))
