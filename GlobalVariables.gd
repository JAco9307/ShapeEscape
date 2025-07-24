extends Node

var money:int = 500
var player:Player
var selectedObject
var handrot:Vector3 = Vector3.ZERO

var shapes = [
	{
		"object": preload("res://models/horse.glb"),
		"name": "horse",
		"owned": -1,
		"rarity": 0,
		"scene": preload("res://objects/Animals/horse.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "Common shark",
		"owned": 0,
		"rarity": 5,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"object": preload("res://models/raccoon.glb"),
		"name": "Raccoon",
		"owned": 0,
		"rarity": 2,
		"scene": preload("res://objects/Animals/raccoon.tscn")
	},
	{
		"object": preload("res://models/guitar.glb"),
		"name": "Guitar",
		"owned": 0,
		"rarity": 2,
		"scene": preload("res://objects/guitar.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark4",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark5",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark6",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark7",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark8",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark9",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/Animals/shark.tscn")
	},
]
