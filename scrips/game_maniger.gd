extends Node
@onready var requierment_door_1: StaticBody2D = $"../requierment_door1"

@onready var explaner: Label = $explaner

var score = 0

func add_point():
	score +=1
	print(score)
	
	if score >= 3:
		explaner.text = "these are bottles the more you pick up, the more animals in this cave you save. also watch out for sea urchins thoes things hurt"
