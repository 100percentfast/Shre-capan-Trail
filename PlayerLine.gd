extends Line2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	add_point(get_node("..").position)
	add_point(get_node("..").position)
#	visible = false
	print(points)


func destination_set(destination):
	position = (get_node("..").position / destination)
	set_point_position(0, get_node("..").position)
	set_point_position(1, destination)
	print(points)
