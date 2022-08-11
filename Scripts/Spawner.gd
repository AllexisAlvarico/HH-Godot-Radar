extends Spatial

func _ready():
	GameData._startSpawn()
	#for _i in GameData.enemyArray.size():
		#print("Plane ID: ",GameData.enemyArray[_i].planeID,"\nAircraft: " , GameData.enemyArray[_i].aircraftName,	"\nFaction: ",GameData.enemyArray[_i].faction,"\nPlane position: ", GameData.enemyArray[_i].planePosition)