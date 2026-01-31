extends Area2D

@export var maskType: Global.Masks

func _on_body_entered(body):
	if body.name == "Player":
		body.ownedMasks[maskType] = true
		print("Player acquired a mask!")

		# delete the mask object
		self.queue_free()
