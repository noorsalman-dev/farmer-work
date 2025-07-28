extends Node


# Called when the node enters the scene tree for the first time.
var score = 0
var scoreou = 0
@onready var label: Label = $Label
@onready var label4: Label = $"../player/Inventory/Label4"
@onready var label_4: Label = $"../../player/Inventory/Node2D2/Label4"
@onready var label_: Label = $"../player/Inventory/Label5"
@onready var label_5: Label = $"../../player/Inventory/Node2D2/Label5"


func add_point():
	score = score + 1
	scoreou = scoreou + 1
	label_4.text = str(score)


func mainas_point():
	score = score -1
	scoreou = scoreou - 1
	label.text = str(score)
	print("jmjdvskjdsksdmds,dsksldl;dsd;lsdkdskdsl")
	if score <= 0:
		score = 0


func time_point():
	scoreou = scoreou * 2
	score = 0
	label_5.text = str(scoreou)
	label.text = str(score)
