extends Panel

signal closed
var props:Array = []
var propsum:float
var rng = RandomNumberGenerator.new()

func _ready():
	var index = 0
	for shape in GlobalVariables.shapes:
		props.append(shape.rarity)
		propsum += shape.rarity
	#print("total prop = " + str(propsum))
	
func close():
	visible = false
	closed.emit()
	
func singlepull():
	var roll = rng.randf_range(propsum,0)
	var index = 0
	for shape in GlobalVariables.shapes:
		roll -= props[index]
		if roll <= 0:
			return shape
		index += 1
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MouseButton.MOUSE_BUTTON_RIGHT:
				close()

func _on_button_1p_pressed() -> void:
	if GlobalVariables.money > 5:
		GlobalVariables.money -= 5
		var shape = singlepull()
		shape.owned += 1

func _on_button_10p_pressed() -> void:
	if GlobalVariables.money > 45:
		GlobalVariables.money -= 45
		for I in range(0,10):
			var shape = singlepull()
			shape.owned += 1
