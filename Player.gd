extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

# change this variable to set the starting location. Default =0
# disabled atm by `func _ready()`
export (int) var location


func _ready():
	pass

func _input(event):
    if event.is_action_pressed('click'):
        $PlayerRoute.destination_set(get_global_mouse_position())
