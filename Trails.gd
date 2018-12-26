extends Node2D

signal gameticked
var playerLocation

func _ready():
	playerLocation = -1
	gametick()

# will be depreciated along with MapScreen's button
func gametick():
	playerLocation += 1
	emit_signal("gameticked", playerLocation)

# button func. depreciation imminent
func _on_Button_pressed():
	gametick()
	print(playerLocation)
