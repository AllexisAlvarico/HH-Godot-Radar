extends Node

var random = RandomNumberGenerator.new()

#change the value if you want to test the scene
var enemyAmount : int = 10
var current_rotation : float
var enemyArray : Array
#change this prefab to its actual plane model
var enemyscene = load("res://Prefabs/Plane.tscn")

# DATA OF THE PLANE
class PlaneData:
	var planeID : int
	var planeType : int
	var faction : String
	var aircraftName : String
	var planeTexture : Texture
	var planePosition : Vector3

	func _getID() -> int:
		return planeID


func _startSpawn():
	for _i in range(0,GameData.enemyAmount):
		var plane = PlaneData.new()
		plane.planeType = random.randi_range(0,5)
		random.randomize()
		_setData(plane)
		var enemy = enemyscene.instance()
		var new_pos = Vector3(random.randf_range(-200,200),random.randf_range(80,200),random.randf_range(-200,200))
		enemy.transform.origin = new_pos
		var new_orientation = Vector3(random.randf_range(-60,60),random.randf_range(-90,90),random.randf_range(0,45))
		enemy.rotation_degrees = new_orientation
		add_child(enemy)
		plane.planePosition = new_pos
		plane.planeID = _i
		GameData.enemyArray.append(plane)

		#Assign position into the array
		#print("Plane ID: ",planeID,"\nAircraft: " , aircraftName,"\nFaction: ",faction,"\nPlane position: ", new_pos)

func _setData(_plane : PlaneData):
	match _plane.planeType:
		0:
			_plane.aircraftName = "F6F Hellcat"
			_plane.faction = "allied"
			_plane.planeTexture = load("res://Sprites/Allied/f6f hellcat.png")
			#TODO add meshloder here
		1:
			_plane.aircraftName = "P-38 Lightning"
			_plane.faction = "allied"
			_plane.planeTexture = load("res://Sprites/Allied/p-38 lightning.png")
			#TODO add meshloder here
		2:
			_plane.aircraftName = "B-17 Flying Fortress"
			_plane.faction = "allied";
			_plane.planeTexture = load("res://Sprites/Allied/b-17 flying fortress.png")
			#TODO add meshloder here
		3:
			_plane.aircraftName = "Messerschmit 'ME. 110'"
			_plane.faction = "axis"
			_plane.planeTexture = load("res://Sprites/Axis/messerschmitt.png")
			#TODO add meshloder here
		4:
			_plane.aircraftName = "Heinkel 'HE.111'"
			_plane.faction = "axis";
			_plane.planeTexture = load("res://Sprites/Axis/heinkel.png")
			#TODO add meshloder here
		5:
			_plane.aircraftName = "Focke-wulf 'F.W.200'"
			_plane.faction = "axis"
			_plane.planeTexture = load("res://Sprites/Axis/fock-wulf.png")
			#TODO add meshloder here
