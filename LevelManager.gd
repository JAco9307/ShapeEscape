extends Node

var levelIndex = 0
var levels = [
	"res://Levels/Level1.tscn",
	"res://Levels/Level2.tscn",
	"res://Levels/emilylevel1.tscn",
	"res://Levels/Level3.tscn",
	"res://Levels/Level4.tscn",
	"res://Levels/Level10.tscn",
]

func win():
	levelIndex += 1
	GlobalVariables.reset_ad_timer()
	if levelIndex >= levels.size():
		get_tree().change_scene_to_file("res://Levels/WinLevel/WinLevel.tscn")
	else:
		get_tree().change_scene_to_file(levels[levelIndex])
