extends WindowDialog


func _process(delta):
	if ($time.get_selected_id() == 0):
		Env.timectl = "m"
	elif $time.get_selected_id() == 1:
		Env.timectl = "r"
