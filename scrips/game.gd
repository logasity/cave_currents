extends Node2D
@onready var game: Node2D = $"."

func _ready() -> void:
	%black_screen.hide()

func _on_kill_box_player_died() -> void:
	%player.play_die_ani()
	print("die sucses")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	pass # Replace with function body.
