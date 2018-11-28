extends Popup



# master function. Updates Event Window with content from loaded Event.
func _on_Event_event_picked(event, choice, location):
	if event:
		$Choices.update_choices(choice, location)
			# choice handler. Updates the buttons to match loaded event.
		$EventText.handle_text(event[0])
			# text handler.
		$EventArt.handle_art(event[1])
			# art handler.
		popup()
			# makes the popup do its thing. Sproing.


func _on_Choices_event_picked(event, choice, location):
	_on_Event_event_picked(event, choice, location)
		# passthrough from player choice. Changes events.