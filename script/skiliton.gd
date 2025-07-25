extends CharacterBody2D

var health = 100
var current_dir = "none"
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D
var speed = 120
var player_chase = false
var player = null
@onready var hit: Area2D = $hit




func _physics_process(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	if player_chase:
		position += (player.position -position)/speed


func _on_dete_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true


func _on_dete_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false





func player_movement(delta):
	pass
	

	move_and_slide()


func play_anim(movement):
	var dir = current_dir
	
	if dir == "right":
		print("isnisji")
		anim.flip_h = false
		if movement == 1:
			anim.play("side__walk")
		elif movement == 0:
			anim.play("side_idle")
	if dir == "left":
		print("uydfsuhi")
		anim.flip_h = true
		if movement == 1:
			anim.play("side__walk")
		elif movement == 0:
			anim.play("side_idle")
	if dir == "up":
		anim.flip_h = true
		if movement == 1:
			anim.play("back_walk")
		elif movement == 0:
			anim.play("back_idle")
	if dir == "down":
		anim.flip_h = true
		if movement == 1:
			anim.play("front_walk")
		elif movement == 0:
			anim.play("front_idle")
