extends Node

var money:int = 50
var player:Player
var selectedObject
var handrot:Vector3 = Vector3.ZERO

var shapes = [
	{
		"object": preload("res://models/horse.glb"),
		"name": "horse",
		"owned": -1,
		"rarity": 0,
		"scene": preload("res://objects/horse.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "Common shark",
		"owned": 0,
		"rarity": 5,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark2",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark3",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark4",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark5",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark6",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark7",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark8",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark9",
		"owned": 0,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
]
