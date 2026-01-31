extends ItemList

func _on_item_selected(index):
	var player = get_tree().get_root().get_node("Map").get_node("Player")
	
	var itemName = get_item_text(index)
	for mask in Global.maskNames:
		if Global.maskNames[mask] == itemName:
			player.equippedMask = mask

func _ready():
	self.select(0)
