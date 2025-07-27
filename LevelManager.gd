extends Node

var levelIndex = 0
var levels = [
	"res://Levels/Level1.tscn",
	"res://Levels/emilylevel1.tscn",
	"res://Levels/Level1.tscn",
]

func win():
	levelIndex += 1
	get_tree().change_scene_to_file(levels[levelIndex])
