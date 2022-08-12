extends Spatial

#####################################
#			Variables				#
#####################################

var mouse_speed = 0.1
var is_zooming = false

#####################################
#		Public Functions			#
#####################################

func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass


func _input(event):
	if get_parent().visible && !is_zooming:
		if event is InputEventScreenDrag:
			var movement = event.relative
			rotation.x += deg2rad(movement.y * mouse_speed)
			rotation.x = clamp(rotation.x,deg2rad(0),deg2rad(60))
			rotation.y += -deg2rad(movement.x * mouse_speed)
			GameData.current_rotation = fmod(rotation_degrees.y,360)




func _process(delta):
	if get_parent().visible:
		$Control.visible = true
	else:
		$Control.visible =false
	#print("Rotation: ",GameData.current_rotation)

#####################################
#			Signals					#
#####################################


#####################################
#		Setter Functions			#
#####################################

#####################################
#		Getter Functions			#
#####################################

func get_rotation() -> Vector3:
	return self.rotation_degrees


func _fovSliderChange(value:float):
	
	if $Camera.fov <= 65:
		$Binoculars.visible = true
	else:
		$Binoculars.visible = false
	$Camera.fov = value


func _on_VSlider_drag_started():
	is_zooming = true


func _on_VSlider_drag_ended(value_changed:bool):
	is_zooming = false
