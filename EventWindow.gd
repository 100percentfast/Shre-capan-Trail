extends Popup



func _ready():
	# should probably initialize the popup here
	pass


func _on_Event_event_picked(event, choice, location):
	$Choices.update_choices(choice, location)
		# choice handler.

	popup()
		# makes the popup do its thing. Sproing.
	$EventText.text = event[0]
		#changes the EventText to match the event's content.


func _on_Choices_event_picked(event, choice, location):
	_on_Event_event_picked( event, choice, location )

