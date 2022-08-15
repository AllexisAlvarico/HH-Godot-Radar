extends Spatial

#####################################
#			Variables				#
#####################################

var mouse_speed = 0.01
var is_zooming = false
var movement := Vector2()
var movementWeight := 0.2
onready var slider = $Control/VSlider

#####################################
#		Public Functions			#
#####################################

func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	slider.value = $Camera.fov
	pass


func _input(event):
	if get_parent().visible && !is_zooming:
		if event is InputEventScreenDrag:
			
			movement = event.relative * mouse_speed
			movement.x += rotation.y
			movement.y += rotation.x




func _process(_delta):
	rotation.x = lerp(rotation.x, movement.y, movementWeight)
	rotation.y = lerp(rotation.y, movement.x, movementWeight)
	rotation.x = clamp(rotation.x,deg2rad(0), deg2rad(60))
	GameData.current_rotation = fmod(rotation_degrees.y, 360)

	$Camera.fov = lerp($Camera.fov, slider.value, 0.2)
	if $Camera.fov <= 65:
		$Binoculars.visible = true
	else:
		$Binoculars.visible = false
	# rotation.y += -deg2rad(movement.x * mouse_speed)
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
	# $Camera.fov = value
	pass


func _on_VSlider_drag_started():
	is_zooming = true


func _on_VSlider_drag_ended(value_changed:bool):
	is_zooming = false
