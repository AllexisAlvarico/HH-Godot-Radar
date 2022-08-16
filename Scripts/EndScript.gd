extends Control

func _ready():
	$Panel/Score.text = "Score: " + str(GameData.score) + "/" + str(GameData.enemyAmount)
	$Panel/Percentage.text = "Percentage: " + str((GameData.score / GameData.enemyAmount) * 100) + "%"


func _on_MainMenuButton_pressed():
	GameData.score = 0
	get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_PlayButton_pressed():
	GameData.score = 0
	get_tree().change_scene("res://Scenes/GameplayScreen.tscn")
