extends Line2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	add_point(get_node("..").position)
	add_point(get_node("..").position)
#	visible = false
	print(points)

func _update():
	pass

func _player_destination_set(destination):
	position = (Vector2( 0, 0 ) - Vector2($"..".position))
	set_point_position( 0, get_node("../Player").position)
	set_point_position( 1, destination)
	print(points)
