extends Node2D


func _on_start_button_pressed() -> void:
	print("start")


func _on_level_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Main.tscn")


func _on_credits_button_pressed() -> void:
	pass # Replace with function body.
