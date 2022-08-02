extends Sprite

export (float) var rotation_speed = 1.5
export (int) var speed = 200

func _process(delta):
	self.rotation += (PI / 2 * delta)

