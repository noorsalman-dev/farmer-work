extends Area2D


# Called when the node enters the scene tree for the first time.
@onready var game_manger: Node = %game_manger
@onready var collision_shape_2d: CollisionShape2D = $StaticBody2D/CollisionShape2D
@onready var static_body_2d: StaticBody2D = $StaticBody2D
@onready var tgzsyajuxkihnzdjdzkidk: Node = %tgzsyajuxkihnzdjdzkidk
@onready var label_5: Label = $"../player/Inventory/Node2D2/Label5"







func _on_body_entered(body: Node2D) -> void:
	print("lofd;pflfkdplfdlpfdlflfmkmngbkgfkidfjogjdf;oj;vdljvl.jfdkln")
	self.queue_free()
