extends WindowDialog


func _process(delta):
	if ($time.get_selected_id() == 0):
		Env.timectl = "m"
	elif $time.get_selected_id() == 1:
		Env.timectl = "r"
	


func _on_time_item_selected(index):
	var conf = File.new()
	conf.open("user://.time", File.WRITE)
	var rt = ""
	if (index == 0): rt = "m"
	elif index == 1: rt = "r"
	conf.store_string(rt)
	
	conf.close()
	
	
