extends KinematicBody2D

export (int) var speed = 800
export (int) var jump_speed = -1200
export (int) var gravity = 4000

var velocity = Vector2.ZERO
var coins = 0
var contador = null

func _ready():
	contador = get_node("../CanvasLayer/UserMenu/Contador")

func get_input():
	velocity.x = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed

func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = jump_speed
			var sound = get_node("../SoundEffects")
			sound.stream = load("res://Musics/Jump.wav")
			sound.play()

func add_coin():
	coins += 1
	contador.text = str(coins) + "x"
