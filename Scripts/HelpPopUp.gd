extends Control

var pop = true

func _ready():
	visible = false

func isPopUp():
	return pop

func _on_Button_pressed():
	pop = false
	visible = false

func _on_Label2_pressed():
	visible = true
	pop = true
