extends Node

var loader = load("res://Scripts/SaveLoad.gd").new()
	
func _ready():
	var playerTexture = get_node("Player/Sprite")
	var texture = load(loader.load()["characterName"])
	playerTexture.set_texture(texture)
