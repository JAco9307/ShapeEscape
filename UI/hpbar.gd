extends TextureProgressBar


func _ready() -> void:
	self.value = 100
	
func _on_main_ui_dataout(hp:int, maxhp:int) -> void:
	self.value = hp
	self.max_value = maxhp
