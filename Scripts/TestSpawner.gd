tool
extends Spatial

var random = RandomNumberGenerator.new()
var enemyscene = load("res://Prefabs/Plane.tscn")

func _ready():
	for _i in range(0,GameData.enemyAmount):
		var enemy = enemyscene.instance()
		random.randomize()
		var new_pos = Vector3(random.randf_range(-200,200),random.randf_range(80,200),random.randf_range(-200,200))
		enemy.transform.origin = new_pos
		var new_orientation = Vector3(random.randf_range(-60,60),random.randf_range(-90,90),random.randf_range(0,45))
		enemy.rotation_degrees = new_orientation
		add_child(enemy)
		GameData.enemyArray.append(enemy)
		#Assign position into the array
		print("Enemy position: ", new_pos)

func _process(delta):
	#for _i in GameData.enemyArray.size():
	#	print("Vector3: ",GameData.enemyArray[_i].transform.origin)

	#if Input.is_action_just_pressed("ui_accept"):
	#	for _i in self.get_children():
	#		print("Index : ", _i, " Poistion :",_i.transform.origin)
	pass
