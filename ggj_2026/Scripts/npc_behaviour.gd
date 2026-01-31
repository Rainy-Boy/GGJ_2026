extends Area2D

@export var maskType: Global.Masks

func _on_body_entered(body):
	if body.name == "Player":
		print("Player collided with an NPC")
		if body.ownedMasks[maskType] == false:
			print("Player does not have the necessary mask!")
			print("Kill the player!")
			# TODO: end game screen
