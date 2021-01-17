extends Control

var pop = true

func pauseUnpause():
	var pauseState = not get_tree().paused
	get_tree().paused = pauseState
	visible = pauseState

func _ready():
	pauseUnpause()
	pop = true

func isPopUp():
	return pop

func _on_Button_pressed():
	pauseUnpause()
	pop = false
