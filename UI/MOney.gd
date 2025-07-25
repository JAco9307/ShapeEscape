extends Label
signal dogmunch

func _process(_delta: float) -> void:
	text = "Helicoin: " + str(GlobalVariables.money)
	if GlobalVariables.money > 300:
		dogmunch.emit()
		
