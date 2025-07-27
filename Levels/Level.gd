extends Node3D
class_name Level

@export var targets:Array[Jail] = []
var targetsLeft = 0

var won = false
var winTimer = 7

var stop = false

func _ready() -> void:
	targetsLeft = targets.size()
	for target in targets:
		target.exploded.connect(target_exploded)

func _process(_delta: float) -> void:
	if !stop:
		if targetsLeft == 0:
			win()
		
		if won:
			winTimer -= _delta
			if winTimer <= 0:
				LevelManager.win()
				stop = true

func win():
	if !won:
		%VictorySound.play()
		%AudioStreamPlayer.stop()
	%WinLabel.visible = true
	won = true

func target_exploded():
	targetsLeft -= 1
