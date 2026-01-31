extends Node2D

@export var next_scene: PackedScene
@onready var exit_collider = $AreaExit/ExitCollider

func on_reaching_exit(body):
	get_tree().change_scene_to_packed(next_scene)


func _on_game_over_ui_retry_pressed() -> void:
	get_tree().reload_current_scene()
