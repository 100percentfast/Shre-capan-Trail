extends TextureRect

func handle_art(art):
	if art == "none":
		texture = load("res://GlobalAssets/EventArt/Placeholder.jpg")
	else:
		texture = load(art)
		# Changes the EventArt to match the event's content.
		# If no art is there, it changes it to Placeholder.jpg.