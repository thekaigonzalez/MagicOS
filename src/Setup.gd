extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func onConfigure():
	var dirname = $dir.text
	
	print("Running setup: Configuring environment dirs")
	
	dirname = dirname.replace("\\", "/")
	
	Drives.HOME = dirname + "/"
	
	print("Home: " + Drives.HOME)
