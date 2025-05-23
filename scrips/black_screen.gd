extends Sprite2D
@onready var black_screen: Sprite2D = $"."
@onready var player: CharacterBody2D = %player

func _ready() -> void:
	black_screen.hide()


func activate_black_out():
	black_screen.show()
	

func reset_blackout():
	black_screen.hide()
