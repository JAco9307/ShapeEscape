extends Panel

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
	print(singlepull())

func _on_button_10p_pressed() -> void:
	pass # Replace with function body.
