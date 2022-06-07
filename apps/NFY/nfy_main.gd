extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Directory.new().dir_exists("user://Music"):
		var d = SnapPak.listDir("user://Music")
		
		for f in d:
			#if (f.get_extension() == "")
			var song_name = f.get_basename()
	else:
		Directory.new().make_dir("user://Music")
