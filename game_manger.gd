extends Node


# Called when the node enters the scene tree for the first time.
var score = 0
var scoreou = 0
var scoreouoioi = 0
var scoreouoioik000o0000 = 0
var score00000001 = 0
var score00009081 = 0
var score00000873 = 0
var score00045398 = 0
var score00101010 = 0
var score00000000 = 0
var score00009898 = 0    
var score00000098 = 0
var score00000435 = 0
var score00005678 = 0
var score00000489 = 0
var score00000342 = 0
@onready var la: Label = $Label
@onready var lab: Label = $"../player/Inventory/Label"
@onready var label_5rtttyttyty: Label = $"../../player/Inventory/Node2D2/Label5"
@onready var label: Label = $"../../player/Inventory/Node2D2/Label"
@onready var the: Node = %the
@onready var label_2: Label = $"../../player/Inventory/Node2D2/Label2"
@onready var label_5: Label = $"../../player/Inventory/Node2D2/Label5"
@onready var label_4: Label = $"../../player/Inventory/Node2D2/Node2D2/Label4"
@onready var label_7: Label = $"../../player/Inventory/Node2D2/Label7"
@onready var label1: Label = $"../../player/Inventory/Node2D2/Node2D2/Label"
@onready var label4: Label = $"../../player/Inventory/Node2D2/Label4"
@onready var label_3: Label = $"../../player/Inventory/Node2D2/Label3"
@onready var label_6: Label = $"../../player/Inventory/Node2D2/Node2D2/Label6"
@onready var label6: Label = $"../../player/Inventory/Node2D2/Label6"
@onready var label3: Label = $"../../player/Inventory/Node2D2/Node2D2/Label3"
@onready var label_8: Label = $"../../player/Inventory/Node2D2/Node2D2/Label8"
@onready var label_9: Label = $"../../player/Inventory/Node2D2/Node2D2/Label9"
@onready var label2: Label = $"../../player/Inventory/Node2D2/Node2D2/Label2"
@onready var label9: Label = $"../../player/Inventory/Node2D2/Label9"
@onready var label7: Label = $"../../player/Inventory/Node2D2/Node2D2/Label7"

   
   
func add_point():
	score = score + 1
	label.text = str(score)

func adds_point():
	scoreouoioi += 1
	label_2.text = str(scoreouoioi)


func addyys_point():
	scoreouoioik000o0000 += 1
	label_4.text = str(scoreouoioik000o0000)

func addyyoni1919111s_point():
	score00000001 += 1
	label_7.text = str(score00000001)

func adds_00000001_point():
	score00000001 += 1
	label_7.text = str(score00000001)

func adds_00009081_point():
	score00009081 += 1
	label3.text = str(score00009081)


func adds_00000873_point():
	score00000873 += 1
	label6.text = str(score00000873)


func adds_00045398_point():
	score00045398 += 1
	label_8.text = str(score00045398)

func adds_00101010_point():
	score00101010 += 1
	label_9.text = str(score00101010)

func adds_00000000_point():
	score00000000 += 1
	label1.text = str(score00000000)

func adds_00009898_point():
	score00009898 += 1
	label_6.text = str(score00009898)

func adds_00000098_point():
	score00000098 += 1
	label4.text = str(score00000098)

func adds_00000435_point():
	score00000435 += 1
	label_3.text = str(score00000435)


func adds_00005678_point():
	score00005678 += 1
	label2.text = str(score00005678)


func adds_00000489_point():
	score00000489 += 1
	label9.text = str(score00000489)


func adds_00000342_point():
	score00000342 += 1
	label7.text = str(score00000342)



func mainas_point():
	scoreou = score + scoreouoioi - 30
	label_5.text = str(scoreou)
	print("jmjdvskjdsksdmds,dsksldl;dsd;lsdkdskdsl")



func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score * 2) + scoreou
		label_5.text = str(scoreou)
		score = 0
		label.text = str(score)


	



func _on_closer_body_entered(body: Node2D) -> void:
	if Input.is_action_just_pressed("qw"):
		scoreou = scoreou - 30
		label_5.text = str(scoreou)
		print("koio")




		


func _on_area_2d_3_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (scoreouoioik000o0000 * 3) + scoreou
		label_5.text = str(scoreou)
		scoreouoioik000o0000 = 0
		label_4.text = str(scoreouoioik000o0000)


func _on_area_2d_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (scoreouoioi * 4) + scoreou
		label_5.text = str(scoreou)
		scoreouoioi = 0
		label_2.text = str(scoreouoioi)


func _on_area_2d_4_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000001 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000001 = 0
		label_7.text = str(score00000001)


func _on_area_2d_5_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000000 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000000 = 0
		label1.text = str(score00000000)


func _on_area_2d_6_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000098 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000098 = 0
		label4.text = str(score00000098)

func _on_area_2d_7_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000435 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000435 = 0
		label_3.text = str(score00000435)

func _on_area_2d_8_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00009898 * 8) + scoreou
		label_5.text = str(scoreou)
		score00009898 = 0
		label_6.text = str(score00009898)

func _on_area_2d_9_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00009081 * 4) + scoreou
		label_5.text = str(scoreou)
		score00009081 = 0
		label3.text = str(score00009081)

func _on_area_2d_10_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000873 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000873 = 0
		label6.text = str(score00000873)


func _on_area_2d_11_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00045398 * 20) + scoreou
		label_5.text = str(scoreou)
		score00045398 = 0
		label_8.text = str(score00045398)
func _on_area_2d_12_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00101010 * 4) + scoreou
		label_5.text = str(scoreou)
		score00101010 = 0
		label_9.text = str(score00101010)


func _on_area_2d_13_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00005678 * 10) + scoreou
		label_5.text = str(scoreou)
		score00005678 = 0
		label2.text = str(score00005678)
func _on_area_2d_14_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000489 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000489 = 0
		label9.text = str(score00000489)

func _on_area_2d_15_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("ehyguy"):
		scoreou = (score00000342 * 4) + scoreou
		label_5.text = str(scoreou)
		score00000342 = 0
		label7.text = str(score00000342)
