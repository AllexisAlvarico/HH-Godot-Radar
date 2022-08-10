tool
extends Node2D

var pingPrefab = load("res://Prefabs/PingScene.tscn")

func _ready():
	for _i in range(0,GameData.enemyArray.size()):
		var ping = pingPrefab.instance()
		ping.position = Vector2(GameData.enemyArray[_i].planePosition.x,GameData.enemyArray[_i].planePosition.z)
		ping.planeData = GameData.enemyArray[_i]
		add_child(ping)
