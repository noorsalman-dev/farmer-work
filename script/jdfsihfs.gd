extends Node



# Called when the node enters the scene tree for the first time.
var score = 0
@onready var label3: Label = $"../player/Inventory/Label3"
@onready var labe3: Label = $"../player/Inventory/Node2D2/Label3"
@onready var label_3: Label = $"../../player/Inventory/Node2D2/Label3"




func add_point():
	score = score + 1
	label_3.text = str(score)
