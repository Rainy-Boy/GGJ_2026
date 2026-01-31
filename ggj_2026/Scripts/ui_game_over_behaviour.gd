extends CanvasLayer

func _on_try_again_button_pressed():
	print("Pressed the try again button")
	self.visible = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/map.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
