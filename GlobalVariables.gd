extends Node

var currentLevel:Level

var money:int = 0
var player:Player
var selectedObject
var handrot:Vector3 = Vector3.ZERO
var mouse_sensitivity: float = 0.02

var shapes = [
	{
		"name": "Default",
		"owned": -1,
		"rarity": 0,
		"health": -1,
		"friction": 0.5,
		"bounce": 0,
		"weight": 30,
		"scene": preload("res://objects/Player/starter_shape.tscn")
	},
	{
		"name": "Grimace",
		"owned": 0,
		"rarity": 5,
		"health": 100,
		"friction": 0.2,
		"bounce": 0.2,
		"weight": 5,
		"scene": preload("res://objects/Player/grimace.tscn")
	},
	{
		"name": "Super",
		"owned": 0,
		"rarity": 0.5,
		"health": 20,
		"friction": 0.001,
		"bounce": 0.1,
		"weight": 1,
		"scene": preload("res://objects/Player/Super.tscn")
	},
	{
		"name": "Bear",
		"owned": 0,
		"rarity": 1,
		"health": 40,
		"friction": 20,
		"bounce": 0,
		"weight": 30,
		"scene": preload("res://objects/Animals/bear.tscn")
	},
	{
		"name": "Elephant",
		"owned": 0,
		"rarity": 1,
		"health": 70,
		"friction": 40,
		"bounce": 0.1,
		"weight": 40,
		"scene": preload("res://objects/Animals/elephant.tscn")
	},
	{
		"name": "Giraffe",
		"owned": 0,
		"rarity": 1,
		"health": 10,
		"friction": 0.5,
		"bounce": 0.9,
		"weight": 10,
		"scene": preload("res://objects/Animals/giraffe.tscn")
	},
	{
		"name": "Goose",
		"owned": 0,
		"rarity": 1,
		"health": 15,
		"friction": 0.1,
		"bounce": 0.3,
		"weight": 5,
		"scene": preload("res://objects/Animals/goose.tscn")
	},
	{
		"name": "Horse",
		"owned": 0,
		"rarity": 1,
		"health": 10,
		"friction": 0.1,
		"bounce": 0.1,
		"weight": 5,
		"scene": preload("res://objects/Animals/horse.tscn")
	},
	{
		"name": "Pig",
		"owned": 0,
		"rarity": 1,
		"health": 15,
		"friction": 0.1,
		"bounce": 1000,
		"weight": 5,
		"scene": preload("res://objects/Animals/pig.tscn")
	},
	{
		"name": "Platypus",
		"owned": 0,
		"rarity": 1,
		"health": 10,
		"friction": 0.00001,
		"bounce": 0,
		"weight": 5,
		"scene": preload("res://objects/Animals/platypus.tscn")
	},
	{
		"name": "Raccoon",
		"owned": 0,
		"rarity": 1,
		"health": 10,
		"friction": 0.1,
		"bounce": 0.1,
		"weight": 4,
		"scene": preload("res://objects/Animals/raccoon.tscn")
	},
	{
		"name": "Shark",
		"owned": 0,
		"rarity": 1,
		"health": 10,
		"friction": 0.1,
		"bounce": 0.2,
		"weight": 7,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"name": "Whale",
		"owned": 0,
		"rarity": 1,
		"health": 10,
		"friction": 0.1,
		"bounce": 0.2,
		"weight": 14,
		"scene": preload("res://objects/Animals/whale.tscn")
	},
]

func _process(_delta: float) -> void:
	if Input.is_physical_key_pressed(KEY_CTRL):
		reset()
	if Input.is_physical_key_pressed(KEY_ALT):
		reset()
	if Input.is_physical_key_pressed(KEY_ESCAPE):
		reset()

func reset():
	get_tree().reload_current_scene()
