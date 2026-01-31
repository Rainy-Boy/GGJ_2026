extends Control

#@onready var control: Control = $Control
@onready var label: Label = $Label

func _ready() -> void:
	# Enable the control's clip contents
	self.clip_contents = true
	# Don't trim to get the full line size
	label.text_overrun_behavior = TextServer.OVERRUN_NO_TRIMMING
	# Wait for a frame to update sizes
	await get_tree().process_frame
	# Calculate the final offset
	var final_offset = -(label.get_combined_minimum_size().x - self.size.x)
	# Create the tween
	var tween = create_tween()
	# and tween the offset left to a negative value so it scrolls to the right
	tween.tween_property(label, "offset_left", final_offset, 15).set_delay(1)
	# Set the overrun to ellipsis back
	label.text_overrun_behavior = TextServer.OVERRUN_TRIM_ELLIPSIS

	await tween.finished

	await get_tree().create_timer(2).timeout

	get_tree().change_scene_to_file("res://Scenes/map.tscn")
