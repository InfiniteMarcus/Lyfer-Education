extends Area2D

var sound

func _ready():
	connect("body_entered", self, "_on_body_entered")
	sound = get_node("../../SoundEffects")
	
func _on_body_entered(other):
	if (other.has_method("add_coin")):
		other.add_coin()
		queue_free()
		sound.stream = load("res://Musics/Coin.wav")
		sound.play()
