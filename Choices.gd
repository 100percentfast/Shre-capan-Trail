extends Node2D

signal event_picked

var choiceTarget_1
var choiceTarget_2


# master choice update function
func update_choices(choice, location):
	_clear_choices()
	how_many_choices(choice)
	if define_choices(choice):
		possible_choices(location)


# this func directs choice text to appropriate buttons
func define_choices(choice):
	if str(choice) != "none":
		$Choice_1.text = choice[0]
		$Choice_1.hint_tooltip = choice[1]
		$Choice_2.text = choice[3]
		$Choice_2.hint_tooltip = choice[4]
		return true
	else:
		return false


# this func moves the buttons and/or hides them depending on amount
func how_many_choices(choice):
	if choice[3] != "none":
		$Choice_1.rect_position = Vector2( -120, 65 )
		$Choice_2.disabled = false
		$Choice_2.visible = true

	else:
		$Choice_1.rect_position = Vector2( 53, 65 )
		$Choice_2.disabled = true
		$Choice_2.visible = false

# determines locations for each event, based on eventArg
func possible_choices(event):
	var location = get_path_to(event)
	var eventPaths = get_node(location).get_children()

	if len(eventPaths) == 0:
		_clear_choices()

	if len(eventPaths) == 1:
		choiceTarget_1 = eventPaths[0]
		choiceTarget_2 = "none"

	if len(eventPaths) == 2:
		choiceTarget_1 = eventPaths[0]
		choiceTarget_2 = eventPaths[1]


# CHOICE BUTTON LOGIC
func _on_Choice_1_pressed():
	if str(choiceTarget_1) != "none":
		var content = get_node("/root/Trails/Event/Events").get_content(choiceTarget_1)
		emit_signal( "event_picked", content[0], content[1], choiceTarget_1 )
			# uses $events.get_event_content to assemble event content
			# it then sends _event_chosen signal, with the content array
	else:
		if get_node("..").is_visible():
			get_node("..").hide()
				# hides window if button exits event
	_clear_choices()


func _on_Choice_2_pressed():
	if str(choiceTarget_2) != "none":
		var content = get_node("/root/Trails/Event/Events").get_content(choiceTarget_2)
			# function to retrieve event content from supplied event
		emit_signal( "event_picked", content[0], content[1], choiceTarget_2 )
			# once the content is arranged, it emits a signal with two arrays.
			# Content[0] is story text & art. Content [1] is choice content.
	else:
		if get_node("..").is_visible():
			get_node("..").hide()
	_clear_choices()


func _clear_choices():
	choiceTarget_1 = "none"
	choiceTarget_2 = "none"