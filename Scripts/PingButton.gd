extends Node2D

#####################################
#			Variables				#
#####################################

var planeData : GameData.PlaneData
var index : int
var isFound : bool = false

#####################################
#		Public Functions			#
#####################################

func _ready():
	self.modulate.a = 0

func _process(delta):
	self.modulate.a -= 0.0

#####################################
#			Signals					#
#####################################

func _on_radarline_entered(area):
	self.modulate.a = 1

func _on_pressed():
	#add quiz scene here
	#get_tree().change_scene("res://Scenes/QuizScene.tscn")
	print("Plane ID: ", planeData.planeID,"\nAircraft: " , planeData.aircraftName)


#####################################
#		Getter Functions			#
#####################################

func getPlaneName() -> String:
	return planeData.aircraftName

func getPlaneFaction() -> String:
	return planeData.faction

func getPlaneTexture() -> Texture:
	return planeData.planeTexture

