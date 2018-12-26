extends Node2D

signal event_picked

# this variable is initialized with a placeholder because of the load_deck()
	# and to reduce confusion by the array starting with 0.
	# When picking a 'card', it is important to exclude element 0.
var deck = [ "placeholder" ]


# initializes deck environment when game starts
func _ready():
	randomize()
	load_deck()


# Function used when drawing a random event from the deck.
func _draw_event():
	randomize()
	if to_event_or_not_to_event_that_is_the_question():
		pick_event()


# checks whether RandomEvent should show based on a chance var.
func to_event_or_not_to_event_that_is_the_question():
	var chance = randi()%11+1
	if chance > 5:
		return true
	else:
		return false

# picks a random event from the deck, assembles its info, and calls EventPopup to show it.
func pick_event():
	var drawn = deck[randi()% len(deck)]
	while str(drawn) == "placeholder":
		drawn = deck[randi()% len(deck)]
	var content = get_node("/root/Trails/Event/Events").get_content(drawn)
	emit_signal( "event_picked", content[0], content[1], drawn )


# Initialization of deck. Draws 'weight' from RandomEvent scripts,
	# then adds a number of 'cards' to the deck == weight.
func load_deck():
	for event in get_children():
		var counter = 1
		var cardAmount = event.weight
		while counter <= cardAmount:
			deck.append(event)
			counter += 1


# called when Player moves.
	# Should also send a _pause signal (unimplemented)
func _on_PlayerEventLogic__draw_event():
	_draw_event()


#                  (future framework) 
# Functions to add/remove cards from current deck at runtime.
	# eventName = ID of RandEv to add/remove from deck
	# amount = amount of instances to add/remove from deck
func _remove_card(eventName, amount):
	pass


func _add_card(eventName, amount):
	pass
