extends Area2D

@export var maskType: Global.Masks

func _on_body_entered(body):
	if body.name == "Player":
		print("Player collided with an NPC")
		if body.ownedMasks[maskType] == false:
			print("Player does not have the necessary mask!")
			print("Kill the player!")

			get_tree().paused = true

			# not deleting the player so the camera doesn't jump to (0,0)
			body.visible = false

			var gameOverUi = get_tree().get_root().get_node("Map").get_node("GameOverUi")
			gameOverUi.visible = true
			
