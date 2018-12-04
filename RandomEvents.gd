extends Node2D

var deck

func _ready():
	load_deck()


func _draw_event():
	var drawn = deck[random(0,len(deck))]
	var content = get_node("/root/Trails/Event/Events").get_content(drawn)
	emit_signal( "event_picked", content[0], content[1], drawn )


func load_deck():
	for event in get_children():
		var cardAmount = event.weight
		deck += cardAmount * [event]


#                      (unimplemented) 
# Functions to add/remove cards from current deck at runtime.
	# eventName = ID of RandEv to add/remove from deck
	# amount = amount of instances to add/remove from deck
func _remove_card(eventName, amount):
	pass


func _add_card():
	pass
