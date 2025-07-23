extends CanvasLayer

func _ready() -> void:
	$ShapeSelect.visible = false

func _on_shape_button_pressed() -> void:
	$ShapeSelect.visible = true
