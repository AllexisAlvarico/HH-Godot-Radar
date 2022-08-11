extends Spatial
var random = RandomNumberGenerator.new()
var velocity : Vector3
var speed : float = 10.0
onready var plane = get_child(0)

func _ready():
	random.randomize()
	speed = random.randf_range(5,15)

func _physics_process(delta: float) -> void:
   var tr =  plane.global_transform.looking_at(plane.get_child(0).get_child(0).transform.origin, Vector3.UP)
   plane.global_transform = plane.global_transform.interpolate_with(tr, 0.1)
   velocity = Vector3.ZERO
   velocity += plane.transform.basis.x * speed
   plane.move_and_collide(velocity * delta)
