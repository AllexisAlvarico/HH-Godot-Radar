extends Node2D

#####################################
#			Variables				#
#####################################

var planeData : GameData.PlaneData
var index : int
var isFound : bool = false
onready var quizPrefab = preload("res://Scenes/QuizScene.tscn")

onready var button = $Area2D/Sprite/TextureButton

#####################################
#		Public Functions			#
#####################################

func _ready():
	self.modulate.a = 0

func _process(delta):
	self.modulate.a -= 0.005

#####################################
#			Signals					#
#####################################

func _on_radarline_entered(area):
	self.modulate.a = 1

func _on_TextureButton_pressed():
	isFound = true
	#print("ID: ", planeData.planeID)

#####################################
#		Getter Functions			#
#####################################

func getPlaneName() -> String:
	return planeData.aircraftName

func getPlaneFaction() -> String:
	return planeData.faction

func getPlaneTexture() -> Texture:
	return planeData.planeTexture

func getOnPressed() -> bool:
	return isFound


