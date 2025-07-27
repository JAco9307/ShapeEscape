extends Node2D

var adTime = 103

func _process(delta: float) -> void:
	%Timer.text = str(floori(adTime))
	adTime -= delta
	if adTime <= -7:
		win()

func win():
	LevelManager.win()
