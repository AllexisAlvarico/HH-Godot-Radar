extends Spatial

#####################################
#			Variables				#
#####################################

var mouse_speed = 0.1


#####################################
#		Public Functions			#
#####################################
func _ready():

	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _input(event):
	if event is InputEventMouseMotion:
		var movement = event.relative
		self.rotation.x -= deg2rad(movement.y * mouse_speed)
		self.rotation.x = clamp(self.rotation.x,deg2rad(0),deg2rad(90))
		rotation.y += -deg2rad(movement.x * mouse_speed)
		PlayerData.current_rotation = self.rotation_degrees.y


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
