extends Node

var currentLevel:Level

var money:int = 0
var player:Player
var selectedObject
var handrot:Vector3 = Vector3.ZERO

var shapes = [
	{
		"name": "Default",
		"owned": -1,
		"rarity": 0,
		"health": -1,
		"friction": 0.5,
		"bounce": 0,
		"weight": 50,
		"object": preload("res://models/Player/starter.glb"),
		"scene": preload("res://objects/Player/starter_shape.tscn")
	},
	{
		"name": "Grimace",
		"owned": 0,
		"rarity": 5,
		"health": 200,
		"friction": 0.2,
		"bounce": 1,
		"weight": 1,
		"object": preload("res://models/Player/grimace.glb"),
		"scene": preload("res://objects/Player/grimace.tscn")
	},
	{
		"name": "Raccoon",
		"owned": 0,
		"rarity": 2,
		"health": 20,
		"friction": 0.001,
		"bounce": 0,
		"weight": 50,
		"object": preload("res://models/Animals/untextured/raccoon.glb"),
		"scene": preload("res://objects/Animals/raccoon.tscn")
	},
	{
		"name": "Guitar",
		"owned": 0,
		"rarity": 2,
		"health": 15,
		"friction": 20,
		"bounce": 0,
		"weight": 1,
		"object": preload("res://models/Objects/guitar.glb"),
		"scene": preload("res://objects/Environment/Guitar.tscn")
	},
]

func _process(delta: float) -> void:
	if Input.is_physical_key_pressed(KEY_CTRL):
		reset()
	if Input.is_physical_key_pressed(KEY_ALT):
		reset()
	if Input.is_physical_key_pressed(KEY_ESCAPE):
		reset()

func reset():
	get_tree().reload_current_scene()
