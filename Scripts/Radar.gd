extends Node2D

var pingPrefab = load("res://Prefabs/PingScene.tscn")

func _ready():
	for _i in range(0,GameData.enemyArray.size()):
		var pingInstance = pingPrefab.instance()
		pingInstance.position = Vector2(GameData.enemyArray[_i].planePosition.x,GameData.enemyArray[_i].planePosition.z)
		pingInstance.planeData = GameData.enemyArray[_i]
		add_child(pingInstance)
