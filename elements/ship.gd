extends Node2D

var angularSpeed = PI
var speed = 400

func _process(delta):
	var direction = 0
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed

	rotation += angularSpeed * direction * delta
	position += velocity * delta
