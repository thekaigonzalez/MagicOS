extends Button


# The Base for an application instance

export(PackedScene) var Link

func _ready():
	print("Application: Ready")
	print("Name of application: " + text)

func _on_triggered():
	var linked_instance = Link.instance()
	get_tree().get_root().add_child(linked_instance)
	if (linked_instance.window_title == ""):
		print("Automatically setting window title: " + text)
		linked_instance.window_title = text
	# Load G11 Theme
	linked_instance.theme = load("res://system/g11/G11WT.tres")
	
	linked_instance.show()

	print("Starting " + text + "...")
