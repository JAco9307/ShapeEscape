extends Node2D

func _ready() -> void:
	if GlobalVariables.achivements["ads"]:
		$adsbadge.visible = true
