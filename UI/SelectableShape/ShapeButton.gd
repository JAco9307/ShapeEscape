extends Button

var rotationTimer = 0
var localoffset 

func set_info(info:String):
	$Info.text = info

func set_location_offset(offset):
	localoffset= offset

func change_object(object):
	%ViewObject.change_object(object)

func _process(delta):
	var texture = $SubViewport.get_texture()
	$TextureRect.texture = texture
	%ViewObject.global_position = localoffset
	
	rotationTimer -= delta
	%ViewObject.object.rotation += Vector3.UP * delta
