extends CharacterBody2D

var health = 100
var current_dir = "none"

var speed = 120
var player_chase = false
var player = null
var movment = false
@onready var hit: Area2D = $hit
@onready var timer: Timer = $take_hit/Timer
@onready var anim: AnimatedSprite2D = $take_hit/AnimatedSprite2D
@onready var timer_2: Timer = $take_hit/Timer2
@onready var collision_shape_2d: CollisionShape2D = $take_hit/hit/CollisionShape2D
@onready var animated_sprite_2d: AnimatedSprite2D = $take_hit/AnimatedSprite2D




func _physics_process(delta):
	if movment == true:
		animated_sprite_2d.play("default")
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	if player_chase:
		position += (player.position -position)/speed


func _on_dete_body_entered(body: Node2D) -> void:
	timer.start()
	movment = true
	player = body
	player_chase = true


func _on_dete_body_exited(body: Node2D) -> void:
	timer.stop()
	movment = false
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


func _on_timer_timeout() -> void:
	collision_shape_2d.disabled = true
	if collision_shape_2d.disabled == true:
		collision_shape_2d.disabled = false
