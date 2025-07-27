extends Label

var dir:bool = false

@export var maxscale:float = 1.15
@export var minscale:float = 0.85

func _process(delta: float) -> void:
	if dir:
		scale += (Vector2(1,1) * 0.000015) /delta
		if scale > Vector2(1,1) * maxscale:
			dir = false
	else:
		scale -= (Vector2(1,1) * 0.000015) /delta
		if scale < Vector2(1,1) * minscale:
			dir = true
