extends Sprite2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var helth =  0
var poling = false
func _physics_process(delta):
	if Input.is_action_just_pressed("tata"):
		if poling == false:
			animation_player.play("new_animation_2")
			poling = true
		elif poling == true:
			animation_player.play("new_animation")
			poling = false
	if Input.is_action_just_pressed("huhu"
	):
		animation_player.play("new_animation")
