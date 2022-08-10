extends Node2D

onready var bino = $Pivot
onready var radar = $Radar
onready var cheatSheet = $CheatSheet
onready var handbookButton = $HandbookButton

func _ready():
	bino.visible = true
	radar.visible = false
	cheatSheet.visible = false
	handbookButton.visible = true

func _SwitchNode():
	bino.visible = !bino.visible
	radar.visible = !bino.visible
	if cheatSheet.visible:
		cheatSheet.visible = false
	handbookButton.visible = !handbookButton.visible


func _on_HandbookButton_button_down():
	cheatSheet.visible = !cheatSheet.visible
