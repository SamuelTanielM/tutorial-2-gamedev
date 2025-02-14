extends Area2D

func _on_ObjectiveArea_body_entered(body):
	if body.name.contains("Ufo"):
		print("You've Fallen")
		# Request teleportation (set the target position)
		body.queue_teleport = Vector2(70, 450)  # Teleport position
