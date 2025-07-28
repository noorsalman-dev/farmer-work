extends Area2D


@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer_2: Timer = $Timer2
@onready var the: Node = %the
@onready var gvdeujgghgg: Node = %gvdeujgghgg
@onready var timer_3: Timer = $Timer3
@onready var game_manger: Node = %game_manger

func _ready() -> void:
	timer_3.start()
	collision_shape_2d.disabled = true
	

func _on_timer_timeout() -> void:
	animated_sprite_2d.play("default")
	collision_shape_2d.disabled = true
	print("oooo,,")


func _on_timer_2_timeout() -> void:
	collision_shape_2d.disabled = false




func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if collision_shape_2d.disabled == false:
		timer.start()
		timer_2.start()
		game_manger.adds_00000098_point()
		animation_player.play("new_animation")
		collision_shape_2d.disabled = true


func _on_timer_3_timeout() -> void:
		collision_shape_2d.disabled = false
