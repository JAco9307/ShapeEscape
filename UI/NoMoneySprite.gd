extends Sprite2D

func _ready() -> void:
	visible = false

func _on_gacha_panel_nomoney() -> void:
	visible = true
	await get_tree().create_timer(0.1).timeout
	visible = false
	await get_tree().create_timer(0.1).timeout
	visible = true
	await get_tree().create_timer(0.6).timeout
	visible = false
