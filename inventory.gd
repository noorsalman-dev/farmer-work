extends Sprite2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var helth =  0
func _physics_process(delta):
	if Input.is_action_just_pressed("tata"):
		animation_player.play("new_animation_2")
	if Input.is_action_just_pressed("huhu"
	):
		animation_player.play("new_animation")
