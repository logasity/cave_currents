extends Area2D

@onready var game_maniger: Node = %"game maniger"
@onready var trashy: Sprite2D = $trashy
@onready var helped: Sprite2D = $helped
@onready var thank_you_message: Label = $"thank you message"
@onready var player: CharacterBody2D = %player
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer
@onready var timer_2: Timer = $Timer2




func _on_body_entered(_body: Node2D) -> void:
	print("turtal tuched")
	game_maniger.add_point()
	trashy.hide()
	helped.show()
	thank_you_message.text = ("Thank you so much for helping me, I thought that was food.")
	
	timer.start()
	$CollisionShape2D.queue_free()
	


func _ready() -> void:
	trashy.show()
	helped.hide()
	thank_you_message.text = (" ")

func _on_timer_timeout() -> void:
	thank_you_message.text = (" ")
	timer_2.start()
	animation_player.play("move to door")
	

func _on_timer_2_timeout() -> void:
	print("timer_2")
	animation_player.stop()
	thank_you_message.text = ("I saw this door, dont know if it's any use to you. but its the least I can do to help you")
