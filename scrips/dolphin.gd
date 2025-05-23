extends Area2D

@onready var game_maniger: Node = %"game maniger"
@onready var helped_dolphin: AnimatedSprite2D = $helped_dolphin
@onready var trashy_dolphin: AnimatedSprite2D = $trashy_dolphin
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	trashy_dolphin.show()
	helped_dolphin.hide()

func _on_body_entered(body: Node2D) -> void:
	animation_player.play("guide_for_dolphin")
