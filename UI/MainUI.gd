extends CanvasLayer

signal dataout

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

func _on_player_hpupdate(hp:int, maxhp:int) -> void:
	dataout.emit(hp,maxhp) # Replace with function body.

func _on_ad_button_pressed() -> void:
	if GlobalVariables.money >= 100:
		GlobalVariables.money -= 100
		get_tree().change_scene_to_file("res://Levels/AdLevel/AdLevel.tscn")
