extends Node


# Called when the node enters the scene tree for the first time.
var score = 0
var scoreou = 0
@onready var labelgrrggrg: Label = $"../player/Inventory/Label5"
@onready var game_manger: Node = %game_manger
@onready var label: Label = $"../../player/Inventory/Node2D2/Label"
@onready var label_5: Label = $"../../player/Inventory/Node2D2/Label5"
@onready var tgzsyajuxkihnzdjdzkidk: Node = %tgzsyajuxkihnzdjdzkidk
@onready var the: Node = %the
@onready var ggxg3: Node = $"../ggxggh"
@onready var gvdeujgghgg: Node = %gvdeujgghgg
@onready var ggxggh: Node = %ggxggh




func mainas_point():
	scoreou = scoreou + 1
	label_5.text = str(scoreou)
