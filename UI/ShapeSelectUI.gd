extends PanelContainer

var shapeButtonScene = preload("res://UI/SelectableShape/ShapeButton.tscn")

var shapes = [
	{
		"object": preload("res://models/horse.glb"),
		"name": "horse",
		"cost": 0,
		"scene": preload("res://objects/horse.tscn")
	},
	{
		"object": preload("res://models/shark.glb"),
		"name": "shark",
		"cost": 5,
		"scene": preload("res://objects/shark.tscn")
	},
]

var offset = Vector3(0, 10000, 10000)

func _ready() -> void:
	setup_buttons()

func close():
	visible = false

func button_clicked(index):
	if GlobalVariables.money >= shapes[index].cost:
		GlobalVariables.money -= shapes[index].cost
		GlobalVariables.player.change_object(shapes[index].scene.instantiate())
		close()

func setup_buttons():
	var index = 0
	for shape in shapes:
		var newButton = shapeButtonScene.instantiate()
		var buttonObject = shape.object.instantiate()
		%ShapeButtons.add_child(newButton)
		newButton.set_location_offset(offset)
		offset += Vector3(0, 10000, 10000)
		newButton.change_object(buttonObject)
		
		newButton.set_info(shape.name + " - " + str(shape.cost) + " dollars")
		newButton.pressed.connect(button_clicked.bind(index))
		index += 1
