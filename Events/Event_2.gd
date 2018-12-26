extends Node2D


# LOCATION OF EVENT
# a value of -1 (or lower) disables the event.
# when playerLocation == eventLocation, the
# event goes off.
export var eventLocation = 2
# will soon be depreciated along with the MapScreen button

# CONTENT VARIABLES
export var eventText = "Event2Text"
	# text to display for event
export var eventArt = "Event2Art"
	# NOT IMPLEMENTED
	# filename for graphic in res://events/eventArt
	# needs an extension, too. (.png, .jpg)


# CHOICE DESCRIPTIONS
# Isn't choice a weird word? Choice. Choice.

export var choice_1 = "Button 1 Text"
	# text to display on button
export var choiceHT_1 = "Choice 1 Tooltip"
	# text to display on tooltip (hovertext)
export var choiceArg_1 = "Choice 1 Arguments"
	# NOT YET IMPLEMENTED
	# arguments to pass into choiceHandler.

# choice_2 = "none" disables second choice
# all variables do to the second button what 
# the above did to the first.
export var choice_2 = "none"
export var choiceHT_2 = "Choice 2 Tooltip"
export var choiceArg_2 = "Choice 2 Arguments"



# probably should have any resource initialization scripts here