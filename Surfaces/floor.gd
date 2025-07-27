@tool
extends Node3D

@export var scaleX: int:
	set(new_resource):
		scaleX = new_resource
		if Engine.is_editor_hint():
			$StaticBody3D/CollisionShape3D.shape.size.x = scaleX
			$StaticBody3D/MeshInstance3D.mesh.size.x = scaleX


@export var scaleZ: int:
	set(new_resource):
		scaleZ = new_resource
		if Engine.is_editor_hint():
			$StaticBody3D/CollisionShape3D.shape.size.z = scaleZ
			$StaticBody3D/MeshInstance3D.mesh.size.y = scaleZ

		
		
