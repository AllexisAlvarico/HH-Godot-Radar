extends Sprite

func _process(delta):
	self.rotation = -PlayerData.current_rotation * delta