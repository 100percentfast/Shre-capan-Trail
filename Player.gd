extends Node2D

# this var should be moved to $"Trails/Player/Preferences" for consistency
export var speed = 200

# initialization of Vector2 variables to be used in movement
var target = Vector2()
var velocity = Vector2()

# input grabber for mouse click.
func _input(event):
	if event.is_action_pressed('click'):
		$"../MapScreen/Route"._player_destination_set(get_global_mouse_position())
		target = get_global_mouse_position()

# input translation to physics engine.
func _physics_process(delta):
	velocity = (target - position).normalized() * speed
	# uses speed var (needs update) to change position.
	if (target-position).length() > 5:
		move_and_slide(velocity)
		# prevents actor from "twitching" at destination