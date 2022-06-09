extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$usern.text = 'Logged in as: ' + gsyshat.username


func _on_home_pressed():
	if not (Directory.new().dir_exists("user://home")):
		Directory.new().make_dir("user://home")
		print("created home system dir")
	
	if not (Directory.new().dir_exists("user://home/" + gsyshat.username)):
		Directory.new().make_dir("user://home/" + gsyshat.username)
