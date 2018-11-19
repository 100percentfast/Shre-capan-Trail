extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

# change this variable to set the starting location. Default =0
# disabled atm by `func _ready()`
export (int) var location


func _ready():
	if location != -1:
		location = -1
		# hardcoded starting location.


#func _process(delta):
#	# this function updates based on framerate. Might use this for
#	# resource decay, but will most likely drive gametick() from FPS
#	# and set resource decay to call on _gameticked.
#	pass

