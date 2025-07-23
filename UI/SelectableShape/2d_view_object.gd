extends Node3D

var object

func _ready() -> void:
	object = $horse

func change_object(newObject):
	remove_child(object)
	object.queue_free()
	add_child(newObject)
	object = newObject
