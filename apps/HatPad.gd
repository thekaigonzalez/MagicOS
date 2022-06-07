extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.



func _on_Save_pressed():
	$save.show()
	$save.current_dir = "user://"
	
	var sf = $save.filename
	
	


func _on_FileDialog_file_selected(path):
	print("Filename: " + path)
	if !(File.new().file_exists(path)):
		var fwr = File.new()
		
		fwr.open(path, File.WRITE)
		
		fwr.store_string($Code.text)
		
		fwr.close()


func _on_load_file_selected(path):
	var fafs = File.new()
	fafs.open(path, File.READ)
	
	$Code.text = fafs.get_as_text()


func _on_Load_pressed():
	$load.show()
	$load.current_dir = "user://"
	
