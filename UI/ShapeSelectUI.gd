extends PanelContainer

var shapeButtonScene = preload("res://UI/SelectableShape/ShapeButton.tscn")

var shapes = GlobalVariables.shapes

var offset = Vector3(0, 10000, 10000)

signal closed

func _ready() -> void:
	pass

func close():
	visible = false
	closed.emit()
	for button in %ShapeButtons.get_children():
		button.queue_free()

func button_clicked(index):
	if shapes[index].owned == -1:
		var shape = shapes[index].scene.instantiate()
		shape.physics_material_override.friction = shapes[index].friction
		shape.physics_material_override.bounce = shapes[index].bounce
		shape.initialMass = shapes[index].weight
		shape.health = shapes[index].health
		shape.maxhealth = shapes[index].health
		GlobalVariables.player.change_object(shape)
		close()
		
	elif shapes[index].owned > 0:
		shapes[index].owned -= 1
		var shape = shapes[index].scene.instantiate()
		shape.physics_material_override.friction = shapes[index].friction
		shape.physics_material_override.bounce = shapes[index].bounce
		shape.initialMass = shapes[index].weight
		shape.health = shapes[index].health
		shape.maxhealth = shapes[index].health
		GlobalVariables.player.change_object(shape)
		close()

func setup_buttons():
	var index = 0
	for shape in shapes:
		if shape.owned == 0:
			index += 1
			continue
		var newButton = shapeButtonScene.instantiate()
		var buttonObject = shape.scene.instantiate()
		
		%ShapeButtons.add_child(newButton)
		
		newButton.set_location_offset(offset)
		offset += Vector3(0, 10000, 10000)
		
		newButton.change_object(buttonObject)
		newButton.custom_minimum_size = Vector2(160,170)

		if shape.owned == -1:
			newButton.set_info("Horse\nSanté:NAN\nDésaccord:0.2\nBondir:0\nPesanteur:5")
		else:
			var info = shape.name + " - " + str(shape.owned) + " possédée"
			info += "\nSanté:" + str(shape.health)
			info += "\nDésaccord:" + str(shape.friction)
			info += "\nBondir:" + str(shape.bounce)
			info += "\nPesanteur:" + str(shape.weight)
			newButton.set_info(info)
		
		newButton.pressed.connect(button_clicked.bind(index))
		index += 1
		
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MouseButton.MOUSE_BUTTON_RIGHT:
				close()
				closed.emit()
