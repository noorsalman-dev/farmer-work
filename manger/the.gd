extends Node


# Called when the node enters the scene tree for the first time.

# Called when the node enters the scene tree for the first time.
var score = 0
var scoreou = 0
@onready var labe_2: Label = $"../player/Inventory/Label2"
@onready var labe_5: Label = $"../player/Inventory/Label5"
@onready var label_2: Label = $"../../player/Inventory/Node2D2/Label2"
@onready var label_5: Label = $"../../player/Inventory/Node2D2/Label5"



func add_point():
	score = score + 1
	label_2.text = str(score)


func mainas_point():
	scoreou = scoreou - 1
	label_2.text = str(score)
	print("jmjdvskjdsksdmds,dsksldl;dsd;lsdkdskdsl")
	if score <= 0:
		score = 0


func time_point():
	scoreou = scoreou * 2
	score = 0
	label_5.text = str(scoreou)
	label_2.text = str(score)
	

	


func _on_area_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = score * 2
		label_5.text = str(scoreou)
		score = 0
		label_2.text = str(score)
