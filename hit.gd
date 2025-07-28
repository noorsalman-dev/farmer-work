extends Area2D


# Called when the node enters the scene tree for the first time.
var health = 100
@onready var progress_bar: ProgressBar = $"../ProgressBar"




func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	health = health - 20 
	progress_bar.value = health
	print("o")
	if health <=0:
		get_tree().reload_current_scene()
		print("o")
