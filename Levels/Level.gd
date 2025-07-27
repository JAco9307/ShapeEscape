extends Sprite3D
class_name Level

@export var targets:Array[Jail] = []
var targetsLeft = 0

func _ready() -> void:
	targetsLeft = targets.size()
	for target in targets:
		target.exploded.connect(target_exploded)

func _process(delta: float) -> void:
	if targetsLeft == 0:
		win()

func win():
	pass

func target_exploded():
	targetsLeft -= 1
