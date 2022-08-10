extends Sprite

func _process(delta):
	rotation = -GameData.current_rotation * delta
	#print(rotation)
