extends PanelContainer

var shapeButtonScene = preload("res://UI/SelectableShape/ShapeButton.tscn")

var shapes = [
	{
		"object": preload("res://models/horse.glb"),
		"name": "horse",
		"owned": -1,
		"scene": preload("res://objects/horse.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark",
		"owned": 0,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark2",
		"owned": 0,
		"scene": preload("res://objects/shark.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark3",
		"owned": 2,
		"scene": preload("res://objects/shark.tscn")
	},
]

var offset = Vector3(0, 10000, 10000)

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
		newButton.set_location_offset(offset)
		offset += Vector3(0, 10000, 10000)
		newButton.change_object(buttonObject)
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
