extends Area2D


var health = 100
@onready var progress_bar: ProgressBar = $ProgressBar


func _on_area_entered(area: Area2D) -> void:
	progress_bar.value = health
	health = health - 20
	print("uihhkihi")
	if health <=0:
		queue_free()
