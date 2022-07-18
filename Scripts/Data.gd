extends Node2D


var random = RandomNumberGenerator.new()
export(int) var planeType
export(String) var faction
export(String) var aircraftName
export(int) var planeID


#####################################
#		Public Functions			#
#####################################

func _ready():
	planeType = random.randomize(0,5)
	_setData()

#####################################
#		Setter Functions			#
#####################################

func _setData():
	match planeType:
		0: 
			aircraftName = "F6F Hellcat";
			faction = "allied";
			#sprite
		1: 
			aircraftName = "P-38 Lightning";
			faction = "allied";
			#sprite
		2: 
			aircraftName = "B-17 Flying Fortress";
			faction = "allied";
			#sprite
		3: 
			aircraftName = "Messerschmit 'ME. 110'";
			faction = "axis";
			#sprite
		4: 
			aircraftName = "Heinkel 'HE.111'";
			faction = "axis";
			#sprite
		5: 
			aircraftName = "Focke-wulf 'F.W.200'";
			faction = "axis";
			#sprite

#####################################
#		Getter Functions			#
#####################################

func _getPlaneType() -> int:
	return planeType

func _getID() -> int:
	return planeID

func _getAircraftName() -> String:
	return aircraftName

func _getFaction() -> String:
	return faction

