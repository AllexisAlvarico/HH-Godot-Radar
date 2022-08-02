extends Node2D

export(float) var radarRadius = 240
var random = RandomNumberGenerator.new()
var enemyscene = load("res://Prefabs/PingScene.tscn")
onready var radar = get_node("RadarSprite")

func _ready():
	for _i in range(0,10):
		var enemy = enemyscene.instance()
		random.randomize()
		var new_pos = Vector2(random.randf_range(-256,256),random.randf_range(-256,256))
		if new_pos.distance_to(radar.position) > radarRadius:
			var angle = asin(float(new_pos.x / new_pos.distance_to(radar.position)))
			new_pos.x = radarRadius * sin(angle)
			new_pos.y = radarRadius * cos(angle)
		enemy.position = new_pos
		enemy.setID(_i)
		add_child(enemy)
		#print(_i, " Enemy position: ", new_pos)
