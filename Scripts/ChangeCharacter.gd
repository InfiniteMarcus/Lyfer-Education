extends Node

var saveLoad = load("res://Scripts/SaveLoad.gd").new()

func _on_Level01_pressed():
	saveLoad.save("res://Sprites/Homem1.png")
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Level02_pressed():
	saveLoad.save("res://Sprites/Homem2.png")
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Level03_pressed():
	saveLoad.save("res://Sprites/Homem3.png")
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Level04_pressed():
	saveLoad.save("res://Sprites/Mulher-1.png")
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Level05_pressed():
	saveLoad.save("res://Sprites/Mulher-2.png")
	get_tree().change_scene("res://MainMenu.tscn")


func _on_Level06_pressed():
	saveLoad.save("res://Sprites/Mulher-3.png")
	get_tree().change_scene("res://MainMenu.tscn")
