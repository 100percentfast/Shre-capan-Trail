extends Line2D


# line initializes itself by creating both its points on player's position
func _ready():
	add_point(get_node("..").position)
	add_point(get_node("..").position)
#	visible = false
#	print(points)

func _update():
	pass

# updates line based on destination set by User
	# should change this to a signal listener to increase versatility
func _player_destination_set(destination):
	position = (Vector2( 0, 0 ) - Vector2($"..".position))
	set_point_position( 0, get_node("../../Player").position)
	set_point_position( 1, destination)
	#print(points)
#	print($"../../Player/PlayerEventLogic".oldPos)
#	print($"../../Player/PlayerEventLogic".currentPos)