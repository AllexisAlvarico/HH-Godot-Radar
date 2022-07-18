extends Node2D

export(float) var radarRadius = 4


func _ready():
	var random = RandomNumberGenerator.new()
	var enemyscene = load("res://Prefabs/PingScene.tscn")
	var screen_size = get_viewport().get_visible_rect().size
	var radar = get_node("RadarSprite")
	for _i in range(0,10):
		var enemy = enemyscene.instance()
		random.randomize()

		var new_pos = Vector2(random.randf_range(258,833),random.randf_range(13,587))
		if new_pos.distance_to(radar.position) > radarRadius:
			var angle = asin(float(new_pos.x / new_pos.distance_to(radar.position)))
			new_pos.x = radarRadius * sin(angle)
			new_pos.y = radarRadius * cos(angle)
		enemy.position = new_pos
		add_child(enemy)
		#print(_i, " Enemy position: ", new_pos)

