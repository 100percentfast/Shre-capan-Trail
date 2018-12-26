extends CollisionShape2D


var oldPos
var currentPos
var distance = 0

signal _draw_event


# initializes position logic
func _ready():
	oldPos = $"../../Player".position


# determines if Player is moving, increments distance ifso
	# _process each frame
func _process(delta):

	currentPos = $"../../Player".position
	# updates currentPos every frame (is this wise?)

	# increments distance, sets oldPos to currentPos's position
	if currentPos != oldPos:
		oldPos = $"../../Player".position
		distance += 1

	# when distance >= randomEventFreq, checks _Draw_Event().
	if distance >= $"../Preferences".randomEventFrequency:
		emit_signal("_draw_event")
		distance = 0
		# resets distance because reasons
