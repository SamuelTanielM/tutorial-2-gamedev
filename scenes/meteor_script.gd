extends Area2D

@export var rotation_speed: float = 1.0  # Speed of rotation
@export var move_speed: float = 100.0  # Speed at which it moves diagonally

var direction: Vector2 = Vector2(1, 1)  # Diagonal direction (bottom-right)

func _process(delta):
	# Apply constant rotation to the Area2D
	rotation += rotation_speed * delta
	
func _on_body_entered(body):
	if body.name.contains("Ufo"):
		print("You've Hit Meteor")
		# Request teleportation (set the target position)
		body.queue_teleport = Vector2(70, 450)  # Teleport position
