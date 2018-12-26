extends CollisionShape2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var oldPos
var currentPos
var distance = 0

signal _draw_event

func _ready():
	oldPos = $"../../Player".position


func _process(delta):
	currentPos = $"../../Player".position
	if currentPos != oldPos:
		oldPos = $"../../Player".position
		distance += 1

	if distance >= $"../Preferences".RandomEventFrequency:
		emit_signal("_draw_event")
		distance = 0


#ready:
#oldPos = <get the player's position within its parent node>
#
#process:
#newPos = <get the player's position within its parent node>
#if oldPos != newPos:
#    //different
#oldPos = <get the player's position within its parent node> 
#//updates oldPos so that next process cycle you'll be comparing against this frame's position