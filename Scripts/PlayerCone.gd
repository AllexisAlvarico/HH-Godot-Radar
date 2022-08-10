extends Sprite

func _process(delta):
	rotation = -GameData.current_rotation * delta

	if GameData.current_rotation == 0:
		rotation = 0
