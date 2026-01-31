extends Node2D

func _ready():
	var player = get_tree().get_root().get_node("Ending").get_node("Player")
	player.equippedMask = Global.Masks.FACE
	
	get_tree().paused = true
	
