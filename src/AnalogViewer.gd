extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_ItemList_item_selected(index):
	if $Replay.visible:
		$Replay.visible = false
	if index == 0:
		$VideoPlayer.stream = load("res://manual/MAGIC_OS_MANUAL.webm")
	elif index == 1:
		$VideoPlayer.stream = load("res://manual/MAGIC_OS_CONTRIB.webm")
	elif index == 2:
		$VideoPlayer.stream = load("res://manual/MAGICOS_HOME.webm")
	elif index == 3:
		$VideoPlayer.stream = load("res://manual/MAGIC_LINUX_HOME.webm")
	$VideoPlayer.play()
	#$Replay.visible = false
	


func _on_Replay_pressed():
	$VideoPlayer.play()
	$Replay.visible = false


func _on_VideoPlayer_finished():
	$Replay.visible = true
