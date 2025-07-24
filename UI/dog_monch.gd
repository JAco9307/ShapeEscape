extends TextureRect

func _on_signal():
	
	$AnimationPlayer.play("dogwalk")
	$AnimatedSprite2D.play("default")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "dogwalk":
		$AnimatedSprite2D.play("eat")
		while GlobalVariables.money > 10:
			GlobalVariables.money -= 10
			await $AnimatedSprite2D.animation_looped
		$AnimationPlayer.play("dogleave")
		$AnimatedSprite2D.play("default")
	
