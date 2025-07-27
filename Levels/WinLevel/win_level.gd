extends Node2D
 
var achivements = GlobalVariables.achivements
var aaaaaa:bool = true

func _ready() -> void:
	if achivements["ads"] == false:
		$adsbadge.visible = true
		aaaaaa = false
	if achivements["fall"] >= 5:
		$fallbadge.visible = true
		aaaaaa = false
	if achivements["enter"] == true:
		$enterbadge.visible = true
		aaaaaa = false
	if aaaaaa == true:
		$nobadge.visible = true
