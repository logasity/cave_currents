extends Node
var children = get_children()

func ():
	for child in children:
		child.free()
