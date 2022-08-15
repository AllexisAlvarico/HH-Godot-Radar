extends Control
var faction : String
var slot

func _ready():
	pass

func _input(event):
	if event is InputEventMouseButton:
		for i in GameData.pingNodes.size():
			if GameData.pingNodes[i].isFound:
				setData(GameData.pingNodes[i].planeData, i)
				print("i: ", i)
				self.visible = true


func setData(data : GameData.PlaneData, index : int):
	$ImageCenterContainer/PlaneSprite.texture = data.planeTexture
	$ImageCenterContainer/PlaneSprite/AircraftName.text = data.aircraftName
	faction = data.faction
	slot = index
	print(index)


func _on_FriendlyButton_pressed():
	if faction == "allied":
		GameData.score += 1
	print("Score: ",GameData.score)
	delete()


func _on_EnemyButton_pressed():
	if faction == "axis":
		GameData.score += 1
	print("Score: ",GameData.score)
	delete()

func delete():
	var temp1 = GameData.pingNodes[slot]
	var temp2 = GameData.planeNodes[slot]

	GameData.pingNodes.remove(slot)
	GameData.planeNodes.remove(slot)
	GameData.enemyArray.remove(slot)
	temp1.queue_free()
	temp2.queue_free()

	self.visible = false
