extends Area2D


var health = 100
@onready var progress_bar: ProgressBar = $ProgressBar

func _physics_process(delta):
	progress_bar.value = health

func _on_area_entered(area: Area2D) -> void:
	health = health - 20
	print("uihhkihi")
	if health <=0:
		queue_free()
