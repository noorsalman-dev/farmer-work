extends Label
var uyu = 180
@onready var labeljjj: Label = $"."
@onready var timeruuu: Timer = $"../Timer"
@onready var label: Label = $"."
@onready var timer: Timer = $"../Timer2"
@onready var label_2: Label = $"../Label2"
@onready var collision_shape_2d: CollisionShape2D = $"../Area2D2/CollisionShape2D"
@onready var game_manger: Node = %game_manger

# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	label.text = "%d:%02d" % [floor (timer.time_left / 60) ,int(timer.time_left) % 60]
	if timer.time_left == 0:
		label_2.text = str("you lose
		
		do you want more time 30 coin
		  press here ")
		collision_shape_2d.disabled = false
		


func _on_area_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("left"):
		timer.start()
		collision_shape_2d.disabled = true
		print("loppp")
		$"../Area2D2".queue_free()
		game_manger.mainas_point()
		$"../Label2".queue_free()
