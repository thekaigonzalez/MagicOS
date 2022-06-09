extends Control

onready var app_container = $bar/SMenu/ScrollContainer/AppContainer

func _ready():
	print("Loading System Daemon..")
	
	print("system: creating sys dirs")
	
	if not (Directory.new().dir_exists("user://home")):
		Directory.new().make_dir("user://home")
	for i in SnapPak.getAppFiles():
		print("Installing Local App " + i)
		
		SnapPak.load_app(app_container, i)
	
	$bar/SMenu.visible = false
	
	if File.new().file_exists("user://.time"):
		var c = File.new()
		c.open("user://.time", File.READ)
		Env.timectl = c.get_as_text()
	
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
	$bar/user.text = gsyshat.username
	$bar/TimeCtl.text = hours + ":" + mins


func _on_StartMenu_pressed():
	if $bar/SMenu.visible:
		$bar/SMenu.visible = false
	else:
		$bar/SMenu.visible = true
