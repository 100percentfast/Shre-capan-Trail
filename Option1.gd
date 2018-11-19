extends Node2D


# LOCATION OF EVENT
# a value of -1 (or lower) disables the event.
# when playerLocation == eventLocation, the
# event goes off.
export var eventLocation = 1


# CONTENT VARIABLES
export var eventText = "Choice 1 Text"
	# text to display for event
export var eventArt = "Choice 1 Art"
	# NOT IMPLEMENTED
	# filename for graphic in res://events/eventArt
	# needs an extension, too. (.png, .jpg)


# CHOICE DESCRIPTIONS
# Isn't choice a weird word? Choice. Choice.

export var choice_1 = "Back to Game!"
	# text to display on button
export var choiceHT_1 = "Outta here."
	# text to display on tooltip (hovertext)
export var choiceArg_1 = "none"
	# NOT YET IMPLEMENTED
	# arguments to pass into choiceHandler.

# choice_2 = "none" disables second choice
# all variables do to the second button what 
# the above did to the first.
export var choice_2 = "none"
export var choiceHT_2 = "Choice 2 Tooltip"
export var choiceArg_2 = "Choice 2 Arguments"

