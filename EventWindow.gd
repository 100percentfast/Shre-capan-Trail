extends Popup



func _ready():
	# should probably initialize the popup here
	pass


func _on_Event_event_picked(event, choice, location):

	$Choices.update_choices(choice, location)
		# choice handler. Updates the buttons to match loaded event.

	popup()
		# makes the popup do its thing. Sproing.

	if event[1] == "none":
		$EventArt.texture = load("res://GlobalAssets/EventArt/Placeholder.jpg")
	else:
		$EventArt.texture = load(event[1])
		# Changes the EventArt to match the event's content.
		# If no art is there, it changes it to Placeholder.jpg.

	$EventText.text = event[0]
		# changes the EventText to match the event's content.


func _on_Choices_event_picked(event, choice, location):
	_on_Event_event_picked( event, choice, location )
		# passthrough from player choice. Changes events.
