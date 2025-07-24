extends Label

func _process(delta: float) -> void:
	text = "Helicoin: " + str(GlobalVariables.money)
