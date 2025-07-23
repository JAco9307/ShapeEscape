extends Button

var rotationAmount
var rotationTimer = 0

func _ready() -> void:
	set_rotation_amount()

func set_info(info:String):
	$Info.text = info

func set_location_offset(offset):
	%ViewObject.global_position = offset

func change_object(object):
	%ViewObject.change_object(object)

func _process(delta):
	var texture = $SubViewport.get_texture()
	$TextureRect.texture = texture
	
	rotationTimer -= delta
	if rotationTimer <= 0:
		if randi_range(0, 1) == 0:
			set_rotation_amount()
		rotationTimer = randf_range(0, 6)
	
	%ViewObject.object.rotation += rotationAmount * delta

func set_rotation_amount():
	rotationAmount = Vector3(randf_range(0, 3), randf_range(0, 3), randf_range(0, 3))
