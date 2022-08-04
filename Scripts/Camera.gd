extends Spatial

#####################################
#			Variables				#
#####################################

var mouse_speed = 0.1


#####################################
#		Public Functions			#
#####################################

func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass


func _input(event):
	if get_parent().visible:
		if event is InputEventScreenDrag:
			var movement = event.relative
			self.rotation.x += deg2rad(movement.y * mouse_speed)
			self.rotation.x = clamp(self.rotation.x,deg2rad(0),deg2rad(90))
			rotation.y += -deg2rad(movement.x * mouse_speed)
			PlayerData.current_rotation = self.rotation_degrees.y


func _process(delta):
	if get_parent().visible:
		$Control.visible = true
	else:
		$Control.visible =false


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
	if $Camera.fov <= 60:
		$Binoculars.visible = true
	else:
		$Binoculars.visible = false
	$Camera.fov = value
