extends Node

var mainMusic = load("res://Musics/Main.ogg")
var isPlaying = false

func _ready():
	pass # Replace with function body.

func play_music():
	if not isPlaying:
		$Music.stream = mainMusic
		$Music.play()
		isPlaying = true

func stop_music():
	if isPlaying:
		$Music.stop()
		isPlaying = false
