extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Creating directories...")
	
	print("Home: " + OS.get_user_data_dir())
	
	Directory.new().make_dir("user://.test1")
	print("home (user): " + gsyshat.HOME_DIR())
