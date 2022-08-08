extends Spatial
var random = RandomNumberGenerator.new()
var angle : float
onready var plane = get_node("Pivot/f6f")
func _ready():
	angle = random.randf_range(-10,10)



func _process(delta):
	rotate_y(angle * delta)
