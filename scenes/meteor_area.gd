extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	print("You've Hit Meteor")
	# Request teleportation (set the target position)
	body.queue_teleport = Vector2(70, 450)  # Teleport position
