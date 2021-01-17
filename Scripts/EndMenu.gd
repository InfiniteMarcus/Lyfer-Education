extends Control

var pop = true

func pauseUnpause():
	var pauseState = not get_tree().paused
	get_tree().paused = pauseState
	visible = pauseState

func _ready():
	visible = false

func isPopUp():
	return pop

func openEnd():
	visible = true
	pauseUnpause()
	pop = true

func recomecar():
	pauseUnpause()
	pop = false
	get_tree().change_scene("res://Levels/Level01.tscn")


func continuar():
	pauseUnpause()
	pop = false
	get_tree().change_scene("res://MainMenu.tscn")

func setCoins():
	var quantMoedas = get_node("Menu/QuantMoedas")
	var player = get_node("../../Player")
	quantMoedas.text = "Moedas recebidas: " + str(player.coins) + "/22"
	
