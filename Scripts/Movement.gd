extends Spatial
var random = RandomNumberGenerator.new()
var angle : float

func _ready():
	random.randomize()
	angle = random.randf_range(1,3)


func _process(delta):
	rotate_y(angle * delta)