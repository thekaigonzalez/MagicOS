extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func listDir(d):
	var dir = Directory.new()
	
	dir.open(d)
	
	var l = []
	
	dir.list_dir_begin()
	
	while true:
		var f = dir.get_next()
		if (f == ""): break
		elif not f.begins_with("."):
			l.append(f)
		
	dir.list_dir_end()
	
	return l
	
func getAppFiles():
	print("Loading " + OS.get_user_data_dir() + "/apps")
	
	var list_of_app_files = listDir("user://apps")
	
	return list_of_app_files
	
func load_app(Apps: VBoxContainer, pack_path):
	#
		
	print("Loading " + pack_path)
	
	var loaded = ProjectSettings.load_resource_pack(pack_path)
	
	#var initFile = load("res://Init.gd").new()
	
	#var appName = initFile.AppName
	
	
	var app = load("res://system/userland/applet.tscn").instance()
	
	
	
	#print("Load app name: " + appName)
	
	var win = load("res://Window.tscn")
	
	app.Link = win
	
	app.text = win.instance().window_title
	
	Apps.add_child(app)
	
	var a = Directory.new()
	
	a.remove("res://Init.gd")
	a.remove("res://Window.tscn")
