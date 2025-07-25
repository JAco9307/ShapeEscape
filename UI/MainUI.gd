extends CanvasLayer


func _ready() -> void:
	$InventoryShape.visible = false
	$GachaButton.visible = false
	$GachaPanel.visible = false
	
func _on_shape_button_pressed() -> void:
	if $InventoryShape.visible == false:
		$InventoryShape.visible = true
		$GachaButton.visible = true
		$InventoryShape.setup_buttons()
	
func _on_gacha_button_pressed() -> void:
	$ShapeButton.visible = false
	$GachaPanel.visible = true
	$GachaButton.visible = false
	
func _on_gacha_panel_closed() -> void:
	$ShapeButton.visible = true
	$GachaButton.visible = false

func _on_inventory_shape_closed() -> void:
	$ShapeButton.visible = true
	$GachaButton.visible = false
