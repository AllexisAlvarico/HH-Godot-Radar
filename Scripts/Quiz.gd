extends Control

func setData(data : GameData.PlaneData):
	$ImageCenterContainer/PlaneSprite.texture = data.planeTexture
	$ImageCenterContainer/PlaneSprite/AircraftName.text = data.aircraftName
