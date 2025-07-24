extends CanvasLayer

func _ready() -> void:
	$InventoryShape.visible = false

func _on_shape_button_pressed() -> void:
	if $InventoryShape.visible == false:
		$InventoryShape.visible = true
		$InventoryShape.setup_buttons()
