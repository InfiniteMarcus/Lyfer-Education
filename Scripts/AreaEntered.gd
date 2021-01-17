extends Area2D

onready var goodEnd = get_node("../CanvasLayer/GoodEnd")

func _on_Area2D_body_entered(body):
	if (body.has_method("add_coin")):
		goodEnd.setCoins()
		goodEnd.openEnd()
