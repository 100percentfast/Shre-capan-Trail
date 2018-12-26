extends Label


func handle_text(eventText):
	if eventText == "none":
		text = "ERROR: Failure loading EventText! Does this event even have text!?"
		# noText handler
	else:
		text = eventText
		# changes the EventText to match the event's content.