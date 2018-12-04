extends Node2D

signal event_picked


func _on_MainGame_gameticked(playerLocation):
	if !static_event(playerLocation):
		$Events/RandomEvents._draw_event()


func static_event(playerLocation):
	
	var flag

	for event in get_node("Events/StaticEvents").get_children():    # iterative loop, checks playerLocation against each event's
		if playerLocation == event.eventLocation:      # eventLocation to look for a match.
			flag = true
				# necessary for catch-all below
			var content = $Events.get_content(event)
				# function to retrieve event content from supplied event
			emit_signal("event_picked", content[0], content[1], event)
				# once the content is arranged, it emits a signal with two arrays.
				# Content[0] is story text & art. Content [1] is choice content.
			break

	if !flag:
		emit_signal("event_picked", false, "res://GlobalAssets/EventArt/Placeholder.jpg", "none")
			# catch-all: if there's no event matching playerLocation, it emits a signal with "none" as arguments.
		return false

	else:
		flag = false
		return true
