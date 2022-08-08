extends Spatial

var random = RandomNumberGenerator.new()
var enemyscene = load("res://Prefabs/f6f.tscn")

func _ready():
	for _i in range(0,10):
		var enemy = enemyscene.instance()
		random.randomize()
		var new_pos = Vector3(random.randf_range(-150,150),random.randf_range(50,200),random.randf_range(-300,300))
		enemy.transform.origin = new_pos
		var new_orientation = Vector3(random.randf_range(-90,-120),random.randf_range(0,180),random.randf_range(-60,-120))
		enemy.rotation_degrees = new_orientation
		add_child(enemy)
		print("Enemy position: ", new_pos)
