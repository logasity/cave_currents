extends StaticBody2D

@onready var game_maniger: Node = %"game maniger"
 

func _process(_delta):
	if game_maniger.score >= 7:
		queue_free() # Or whatever logic you want here
