extends Area2D
@onready var black_screen: Sprite2D = %black_screen
func _on_body_entered(body: Node2D) -> void:
	black_screen.activate_black_out()
	%AudioStreamPlayer.volume_db = -80
