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


func _on_begin_pressed():
	$begin.visible = false;
	$VideoPlayer.visible = true
	
	$VideoPlayer.play()


func _on_WindowDialog_popup_hide():
	$VideoPlayer.stop()
