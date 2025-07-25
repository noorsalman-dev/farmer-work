extends Area2D


# Called when the node enters the scene tree for the first time.
var health = 100
@onready var progress_bar: ProgressBar = $"../ProgressBar"

func helth():
	health = health - 20 
	progress_bar.value = health
	if health <=0:
		get_tree().reload_current_scene()
