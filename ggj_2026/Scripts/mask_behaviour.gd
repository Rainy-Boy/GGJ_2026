extends Area2D

@export var maskType: Global.Masks

func _on_body_entered(body):
	if body.name == "Player":
		body.ownedMasks[maskType] = true
		print("Player acquired a mask!")
		
		var itemList = get_tree().get_root().get_node("Map").get_node("MaskUI").get_node("ItemList")
		itemList.add_item(Global.maskNames[maskType])

		# delete the mask object
		self.queue_free()
