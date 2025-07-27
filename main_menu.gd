extends Node2D


func _on_start_button_pressed() -> void:
	print("start")

func _on_level_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Main.tscn")

func _on_credits_button_pressed() -> void:
	$Credits.visible = true

func _on_v_slider_drag_ended(_value_changed: bool) -> void:
	var scaledval = remap($VSlider.value, 0,1000,0.2,0.0002)
	print(scaledval)
	GlobalVariables.mouse_sensitivity = scaledval


func _on_horse_pressed() -> void:
	pass
