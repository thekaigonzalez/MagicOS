extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if (Env.timectl == "m"):
		$Time.text = "Time Display: Military"
	else:
		$Time.text = "Time Display: Regular/Other"
