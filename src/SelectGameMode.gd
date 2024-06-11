extends Node2D


func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if OS.has_feature("web") == false:
			get_tree().quit()
		return
	pass
	
	
func _on_NormalMode_pressed():
	Globals.game_mode = Globals.GameMode.Normal
	
	Globals.UNIQUE_STATION = false
	Globals.MAX_TRACKS = 4
	Globals.NUM_START_STATIONS = 3
	Globals.MAX_STATION_COLOURS = 4
	start()
	pass 


func start():
	Globals.reset()
	
	var _unused = get_tree().change_scene_to_file("res://Main.tscn")
	pass



	
