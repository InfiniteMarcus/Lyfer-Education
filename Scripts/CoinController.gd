extends Area2D

func _ready():
	connect("body_entered", self, "_on_body_entered")
	
func _on_body_entered(other):
	if (other.has_method("add_coin")):
		other.add_coin()
		queue_free()
		var sound = get_node("../../SoundEffects")
		sound.stream = load("res://Musics/Coin.wav")
		sound.play()
