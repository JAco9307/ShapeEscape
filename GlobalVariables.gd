extends Node

var money:int = 500
var player:Player
var selectedObject
var handrot:Vector3 = Vector3.ZERO

var shapes = [
	{
		"name": "horse",
		"owned": -1,
		"rarity": 0,
		"health": -1,
		"friction": 0.2,
		"bounce": 0,
		"weight": 5,
		"object": preload("res://models/horse.glb"),
		"scene": preload("res://objects/Animals/horse.tscn")
	},
	{
		"name": "Common shark",
		"owned": 0,
		"rarity": 5,
		"health": 200,
		"friction": 0.2,
		"bounce": 1,
		"weight": 4,
		"object": preload("res://models/shark.glb"),
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"name": "Raccoon",
		"owned": 0,
		"rarity": 2,
		"health": 20,
		"friction": 0.001,
		"bounce": 0,
		"weight": 50,
		"object": preload("res://models/raccoon.glb"),
		"scene": preload("res://objects/Animals/raccoon.tscn")
	},
	{
		"name": "Guitar",
		"owned": 0,
		"rarity": 2,
		"health": 50,
		"friction": 20,
		"bounce": 0,
		"weight": 1,
		"object": preload("res://models/guitar.glb"),
		"scene": preload("res://objects/guitar.tscn")
	},
]
