extends CharacterBody2D

var health = 100

const SPEED = 100.0
var current_dir = "none"
var hight = false
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var icons_2: Sprite2D = $Area2D/Icons2
@onready var collision_shape_2d: CollisionShape2D = $Area2D/CollisionShape2D
@onready var progress_bar: ProgressBar = $ProgressBar

func _physics_process(delta) : 
	player_movement(delta)
	
	progress_bar.value = health



func player_movement(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		hight == true
	
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_anim(1)
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_anim(1)
		velocity.y = SPEED
		velocity.x = 0
	elif  Input.is_action_pressed("ui_up"):
		current_dir = "up"
		play_anim(1)
		velocity.y = -SPEED
		velocity.x = 0
	else :
		play_anim(0)
		velocity.y = 0
		velocity.x = 0

	move_and_slide()


func play_anim(movement):
	var dir = current_dir
	

	
	if dir == "right":
		
		if movement == 1:
			anim.flip_h = false
			anim.play("side__walk")
		elif movement == 0:
			if hight == false:
				anim.flip_h = false
				anim.play("side_idle")
		if Input.is_action_just_pressed("ui_accept"):
			animation_player.play("side")
	if dir == "left":
		if movement == 1:
			anim.flip_h = true
			anim.play("side__walk")
		elif movement == 0:
			if hight == false:
				anim.flip_h = true
				anim.play("side_idle")
		if Input.is_action_just_pressed("ui_accept"):
			animation_player.play("side_attack")
	if dir == "up":
		if movement == 1:
			anim.play("back_walk")
			anim.flip_h = true
		elif movement == 0:
			if hight == false:
				anim.flip_h = true
				anim.play("back_idle")
		if Input.is_action_just_pressed("ui_accept"):
			animation_player.play("back_attack")
	if dir == "down":
		if movement == 1:
			anim.play("front_walk")
			anim.flip_h = true
		elif movement == 0:
			anim.play("front_idle")
			anim.flip_h = true
		if Input.is_action_just_pressed("ui_accept"):
			animation_player.play("front_attack")
	
	
	
	





 
	
		
	


func _on_hit_area_entered(area: Area2D) -> void:
	health = health - 20 
	progress_bar.value = health
	if health <=0:
		get_tree().reload_current_scene()
