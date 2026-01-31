extends CanvasLayer

signal retry_pressed

func _on_try_again_button_pressed():
	print("Pressed the try again button")
	self.visible = false
	get_tree().paused = false
	retry_pressed.emit()

func _on_quit_button_pressed():
	get_tree().quit()
