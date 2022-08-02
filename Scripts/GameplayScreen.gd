extends Node2D

onready var bino = $Pivot
onready var radar = $Radar

func _ready():
	bino.visible = false

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		bino.visible = true
		radar.visible = false

	if Input.is_action_pressed("ui_select"):
		bino.visible = false
		radar.visible = true
