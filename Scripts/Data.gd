extends Node2D

func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if self.name == "Radarline":
		print("Pinged")
