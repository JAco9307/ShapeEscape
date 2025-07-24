extends PanelContainer

var shapeButtonScene = preload("res://UI/SelectableShape/ShapeButton.tscn")
var offset = Vector3(1000, 10000, 10000)

func clear_roll():
	for child in $ScrollContainer/GachaButtons.get_children():
		child.queue_free()

func show_roll(shape):
	var newButton = shapeButtonScene.instantiate()
	var buttonObject = shape.object.instantiate()
	$ScrollContainer/GachaButtons.add_child(newButton)
	buttonObject.scale = Vector3(1,1,1) * 0.8
	
	newButton.set_location_offset(offset)
	offset += Vector3(0,10000, 10000)
	
	newButton.change_object(buttonObject)
	newButton.custom_minimum_size = Vector2(150,150)
	newButton.set_info(shape.name + " - " + str(shape.owned) + " owned")
