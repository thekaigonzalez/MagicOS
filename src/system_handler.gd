extends Control

func _ready():
	print("Loading Time Daemon..")
	
func _process(f):
	var timeDict = OS.get_time();
	var hour = timeDict.hour;
	var minute = timeDict.minute;
	var seconds = timeDict.second;
	var mins
	var hours
	mins = str(minute)
	if (minute < 10):
		mins = "0" + mins 
	
	
	if Env.timectl == "r": # Military time - Regular time (past 12)
		if (hour > 12): hour = hour - 12
	
	hours = str(hour)
	$background/TimeCtl.text = hours + ":" + mins
