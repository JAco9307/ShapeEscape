extends Node

var money:int
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
		"name": "shark",
		"owned": 1,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark2",
		"owned": 1,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark3",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark4",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark5",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark6",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark7",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark8",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark9",
		"owned": 2,
		"rarity": 1,
		"scene": preload("res://objects/shark.tscn")
	},
]
