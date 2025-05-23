extends Area2D

@onready var timer: Timer = $Timer
@onready var black_screen: Sprite2D = %black_screen
@onready var bottle_1: Area2D = %bottle_1
@onready var bottle_2: Area2D = %bottle_2
@onready var bottle_3: Area2D = %bottle_3
@onready var bottle_4: Area2D = %bottle_4
@onready var sea_urchin: Node = %"sea urchin"
@onready var death_sfx: AudioStreamPlayer2D = %death_sfx
@onready var timer_2: Timer = $Timer2

func _on_body_entered(body: Node2D) -> void:
	print("you dided")
	Engine.time_scale = 0.5
	body.get_node("playercollitionbox").queue_free()
	black_screen.activate_black_out()
	%AudioStreamPlayer.volume_db = -80
	timer.start()
	timer_2.start()
	death_sfx.play()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Engine.time_scale = 1
	#black_screen.reset_blackout()



	
