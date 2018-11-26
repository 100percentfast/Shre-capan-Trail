extends Node2D

signal gameticked
var playerLocation

func _ready():
	playerLocation = -1
	gametick()


func gametick():
	playerLocation += 1
	emit_signal("gameticked", playerLocation)


func _on_Button_pressed():
	gametick()
	print(playerLocation)
