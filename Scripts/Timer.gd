extends Label

onready var timer = self.get_child(0)
onready var badEnd = get_node("../../BadEnd")

func _ready():
	timer.start()

func _process(delta):
	self.text = "Tempo restante: " + str(round(timer.time_left))
	
	if timer.is_stopped():
		badEnd.openEnd()

func stopTimer():
	timer.stop()
