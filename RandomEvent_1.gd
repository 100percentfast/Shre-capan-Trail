extends Node

# RANDOM WEIGHTING
# The heigher this number, the more often it will appear when
# a random event is called.
export var weight = 100

# CONTENT VARIABLES
export var eventText = "Event1Text"
	# text to display for event
export var eventArt = "EventArt"
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
export var choiceArg_2 = "Chowefgwefwgggwerwerg"

