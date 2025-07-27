extends Node

var levelIndex = 0
var levels = [
	
]

func win():
	levelIndex += 1
	get_tree().change_scene_to_file(levels[levelIndex])
