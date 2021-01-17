extends Control

func _ready():
	visible = false

func _input(event):
	var popUp = get_node("../PopUp").get("pop")
	if event.is_action_pressed("ui_pause") and not popUp:
		pauseUnpause()

func pauseUnpause():
	var pauseState = not get_tree().paused
	get_tree().paused = pauseState
	visible = pauseState

func _on_Continuar_pressed():
	pauseUnpause()

func _on_Sair_pressed():
	pauseUnpause()
	get_tree().change_scene("res://MainMenu.tscn")
