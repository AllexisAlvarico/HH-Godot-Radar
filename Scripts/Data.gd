extends Node2D


var random = RandomNumberGenerator.new()
export(int) var planeType
export(String) var faction
export(String) var aircraftName
export(int) var planeID
export(Texture) var planeTexture

#####################################
#		Public Functions			#
#####################################
	
func _ready():
	random.randomize()
	planeType = random.randi_range(0,5)
	_setData()
	self.modulate.a = 0
	
func _process(delta):
	self.modulate.a -= 0.02
	
#####################################
#			Signals					#
#####################################

func _on_radarline_entered(area):
	self.modulate.a = 1
	
func _on_pressed():
	print("Plane ID: ",planeID,"\nAircraft: " , aircraftName)

#####################################
#		Setter Functions			#
#####################################

func _setData():
	match planeType:
		0: 
			aircraftName = "F6F Hellcat";
			faction = "allied";
			planeTexture = load("res://Sprites/Allied/f6f hellcat.png")
		1: 
			aircraftName = "P-38 Lightning";
			faction = "allied";
			planeTexture = load("res://Sprites/Allied/p-38 lightning.png")
		2: 
			aircraftName = "B-17 Flying Fortress";
			faction = "allied";
			planeTexture = load("res://Sprites/Allied/b-17 flying fortress.png")
		3: 
			aircraftName = "Messerschmit 'ME. 110'";
			faction = "axis";
			planeTexture = load("res://Sprites/Axis/messerschmitt.png")
		4: 
			aircraftName = "Heinkel 'HE.111'";
			faction = "axis";
			planeTexture = load("res://Sprites/Axis/heinkel.png")
		5: 
			aircraftName = "Focke-wulf 'F.W.200'";
			faction = "axis";
			planeTexture = load("res://Sprites/Axis/fock-wulf.png")

func setID():
	 planeID += 1
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
func _getTexture() -> Texture:
	return planeTexture


