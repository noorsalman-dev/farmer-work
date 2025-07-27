extends Label

@onready var labeljjj: Label = $"."
@onready var timeruuu: Timer = $"../Timer"
@onready var label: Label = $"."
@onready var timer: Timer = $"../Timer2"

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	label.text = "%d:%02d" % [floor (timer.time_left / 60) ,int(timer.time_left) % 60]
