extends PanelContainer

var shapeButtonScene = preload("res://UI/SelectableShape/ShapeButton.tscn")

var shapes = GlobalVariables.shapes

var offset = Vector3(0, 10000, 10000)

signal closed

func _ready() -> void:
	pass

func close():
	visible = false
	for button in %ShapeButtons.get_children():
		button.queue_free()

func button_clicked(index):
	if shapes[index].owned == -1:
		GlobalVariables.player.change_object(shapes[index].scene.instantiate())
		close()
	elif shapes[index].owned > 0:
		shapes[index].owned -= 1
		GlobalVariables.player.change_object(shapes[index].scene.instantiate())
		close()

func setup_buttons():
	var index = 0
	for shape in shapes:
		if shape.owned == 0:
			index += 1
			continue
		var newButton = shapeButtonScene.instantiate()
		var buttonObject = shape.object.instantiate()
		%ShapeButtons.add_child(newButton)
		buttonObject.scale = Vector3(1,1,1) * 0.8
		
		newButton.set_location_offset(offset)
		offset += Vector3(0, 10000, 10000)
		
		newButton.change_object(buttonObject)
		newButton.custom_minimum_size = Vector2(150,150)

		if shape.owned == -1:
			newButton.set_info("Default")
		else:
			newButton.set_info(shape.name + " - " + str(shape.owned) + " owned")
		
		newButton.pressed.connect(button_clicked.bind(index))
		index += 1
		
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MouseButton.MOUSE_BUTTON_RIGHT:
				close()
				closed.emit()
