extends Node2D

func get_content(location):
	
	var event = get_path_to(location)
	
	var eventContent = [ 
	get_node(event).eventText,
	get_node(event).eventArt
	]
		# this assembles the event's story content into event[].

	var eventChoice = [
	get_node(event).choice_1,
	get_node(event).choiceHT_1,
	get_node(event).choiceArg_1,
	get_node(event).choice_2,
	get_node(event).choiceHT_2,
	get_node(event).choiceArg_2
	]
		# this assembles the event's choice content into choice[].
	
	return [ eventContent, eventChoice ]