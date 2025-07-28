extends StaticBody2D


# Called when the node enters the scene tree for the first time.
@onready var game_manger: Node = %game_manger





func _on_area_2d_body_entered(body: Node2D) -> void:
	game_manger.mainas_point()
