extends Node2D


# LOCATION OF EVENT
# a value of -1 (or lower) disables the event.
# when playerLocation == eventLocation, the
# event goes off.
export var eventLocation = 4
# will soon be depreciated along with the MapScreen button


# CONTENT VARIABLES
export var eventText = "EndText"
	# text to display for event
export var eventArt = "EndArt"
	# NOT IMPLEMENTED
	# filename for graphic in res://events/eventArt
	# needs an extension, too. (.png, .jpg)


# CHOICE DESCRIPTIONS
# Isn't choice a weird word? Choice. Choice.

export var choice_1 = "Button 1 Text"
	# text to display on button
export var choiceHT_1 = "Choice 1 Tooltip"
	# text to display on tooltip (hovertext)
export var choiceArg_1 = "Start"
# choice arguments:
# arg[0] == the child event that it's going to. "none" == back to MainGame.
#		Event name must be supplied. this means all sibling Events must have unique names.
# >arg[0] will change Resources. Unimplemented.


# choice_2 = "none" disables second choice
# all variables do to the second button what 
# the above did to the first.
export var choice_2 = "Back"
export var choiceHT_2 = "Choice 2 Tooltip"
export var choiceArg_2 = "none"

# probably should have any resource initialization scripts here