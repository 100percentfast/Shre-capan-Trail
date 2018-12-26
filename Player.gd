extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

# change this variable to set the starting location. Default =0
export (int) var location
export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()


func _input(event):
	if event.is_action_pressed('click'):
		$"../MapScreen/Route".destination_set(get_global_mouse_position())
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = (target - position).normalized() * speed
	if (target-position).length() > 5:
		move_and_slide(velocity)