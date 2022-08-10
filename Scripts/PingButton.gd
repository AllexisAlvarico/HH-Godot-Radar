extends Node2D

var planeData : GameData.PlaneData



#####################################
#		Public Functions			#
#####################################

func _ready():
	self.modulate.a = 0

func _process(delta):
	self.modulate.a -= 0.00

#####################################
#			Signals					#
#####################################

func _on_radarline_entered(area):
	self.modulate.a = 1

func _on_pressed():
	for _i in GameData.enemyArray.size():
		print("Plane ID: ", planeData.planeID,"\nAircraft: " , planeData.aircraftName)



