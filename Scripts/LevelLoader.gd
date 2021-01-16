extends Node

var loader = load("res://Scripts/SaveLoad.gd").new()

func _ready():
	MusicController.stop_music()
	var playerTexture = get_node("Player/Sprite")
	var characterFile
	
	if loader.load() == null:
		characterFile = "res://Sprites/Mulher-3.png"
	else:
		characterFile = loader.load()["characterName"]

	playerTexture.set_texture(load(characterFile))
