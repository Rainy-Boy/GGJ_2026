extends Area2D

@export var maskType: Global.Masks
@export var npcs: Array[Node] = []

func _on_body_entered(body):
	print("Player is in the zone")

	if body.name == "Player" and body.equippedMask != maskType:
		for npc in npcs:
			# You have to make a new tween for each instance (cringe)
			var tween = create_tween()
			tween.tween_property(npc, "position", body.global_position, 1.0)

		if maskType == Global.Masks.GAS:
			print("The player chocked on gas")
			
			get_tree().paused = true
			# not deleting the player so the camera doesn't jump to (0,0)
			body.visible = false
			var gameOverUi = get_tree().get_root().get_node("Map").get_node("GameOverUi")
			gameOverUi.visible = true
