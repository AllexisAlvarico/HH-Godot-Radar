extends Spatial

#####################################
#			Variables				#
#####################################

var mouse_speed = 0.1


#####################################
#		Public Functions			#
#####################################
func _ready():
	PlayerData.current_rotation = self.rotation_degrees.y


func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		self.rotate_y(-mouse_speed)
	if Input.is_action_pressed("ui_left"):
		self.rotate_y(mouse_speed)
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
