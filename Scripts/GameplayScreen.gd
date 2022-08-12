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
	GameData.pingNodes = get_tree().get_nodes_in_group("PingNodes")
	GameData.planeNodes = get_tree().get_nodes_in_group("PlaneNodes")

func _physics_process(delta):
	for _i in GameData.enemyArray.size():
		GameData.pingNodes[_i].position.x = GameData.planeNodes[_i].global_transform.origin.x
		GameData.pingNodes[_i].position.y = GameData.planeNodes[_i].global_transform.origin.z

func _SwitchNode():
	bino.visible = !bino.visible
	radar.visible = !bino.visible
	if cheatSheet.visible:
		cheatSheet.visible = false
	handbookButton.visible = !handbookButton.visible


func _on_HandbookButton_button_down():
	cheatSheet.visible = !cheatSheet.visible
