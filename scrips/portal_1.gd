extends Area2D
@onready var destination: Marker2D = $destination


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.set_position(destination.global_position)
