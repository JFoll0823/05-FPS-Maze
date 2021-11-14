extends Area


func _on_key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		var score = get_node_or_null("/root/UI/Score/Label")
		if score != null:
			score.text = "Score: 100"
		if exit != null:
			exit.unlock()
			queue_free()
