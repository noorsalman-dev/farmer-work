extends Area2D


var health = 100
@onready var progress_bar: ProgressBar = $ProgressBar
@onready var game_mangerereree: Node = %game_manger
@onready var game_mangeaaaaar: Node = %game_manger
@onready var game_manger: Node = %game_manger
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_area_entered(area: Area2D) -> void:
	progress_bar.value = health
	health = health - 20
	print("uihhkihi")
	if health <=0:
			queue_free()
			animated_sprite_2d.play("new_animation")
	else :
			animated_sprite_2d.play("default")
