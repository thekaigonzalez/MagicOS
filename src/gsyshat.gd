extends Node


# System singleton
# Called using get_node("/root/gsyshat")

# This file contains ext user data.

export var username = "anon"

func HOME_DIR():
	return OS.get_user_data_dir() + "/home/" + username
