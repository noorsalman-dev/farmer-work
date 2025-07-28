extends Area2D


# Called when the node enters the scene tree for the first time.

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer_2: Timer = $Timer2
@onready var the: Node = %the
@onready var gvdeujgghgg: Node = %gvdeujgghgg
@onready var timer_3: Timer = $Timer3
@onready var game_manger: Node = %game_manger

func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if collision_shape_2d.disabled == false:
		self.queue_free()
		game_manger.adds_00045398_point()
		collision_shape_2d.disabled = true
