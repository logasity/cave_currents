extends Area2D

@onready var game_maniger: Node = %"game maniger"
@onready var requierment_door_1: StaticBody2D = $"../../requierment_door1"

func _on_body_entered(_body: Node2D) -> void:
	game_maniger.add_point()
	
	queue_free()

func delete_trash():
	queue_free()

func subnatica():
	print("dammm")
