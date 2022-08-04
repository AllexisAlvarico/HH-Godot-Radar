extends Node2D

onready var bino = $Pivot
onready var radar = $Radar

func _ready():
	bino.visible = true
	radar.visible = false

func _SwitchNode():
	bino.visible = !bino.visible
	radar.visible = !bino.visible

