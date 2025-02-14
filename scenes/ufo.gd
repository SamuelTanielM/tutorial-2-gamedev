extends RigidBody2D

@export var speed = 500.0
@onready var particle = $GPUParticles2D  # Reference to the GPUParticles2D node

var queue_teleport: Vector2 = Vector2.ZERO  # Queue the teleport position

func _ready():
	print("Ufo initialized")
	# Set the particle system to stop initially
	particle.emitting = false

func _process(delta):
	var direction = Vector2.ZERO

	# Check if 'move_up' is pressed
	if Input.is_action_pressed("move_up"):
		direction.y = -1
		# Apply gravity in the up direction
		particle.process_material.set("gravity", Vector2(0, -50))

	# Check if 'move_down' is pressed
	if Input.is_action_pressed("move_down"):
		direction.y = 1
		# Apply gravity in the down direction
		particle.process_material.set("gravity", Vector2(0, 50))

	# Check if 'move_left' is pressed
	if Input.is_action_pressed("move_left"):
		direction.x = -1
		# Apply gravity in the left direction
		particle.process_material.set("gravity", Vector2(-50, 0))

	# Check if 'move_right' is pressed
	if Input.is_action_pressed("move_right"):
		direction.x = 1
		# Apply gravity in the right direction
		particle.process_material.set("gravity", Vector2(50, 0))

	# Normalize direction to avoid faster diagonal movement and apply speed
	direction = direction.normalized()

	linear_velocity = direction * speed  # Correct way to move a RigidBody2D
	
	# Start emitting particles if moving
	if direction.length() > 0:
		particle.emitting = true  # Enable particle emission
	else:
		particle.emitting = false  # Stop particle emission when not moving

# _integrate_forces handles the teleportation
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	# Check if teleport is requested
	if queue_teleport != Vector2.ZERO:
		# Teleport the body
		state.transform.origin = queue_teleport
		state.linear_velocity = Vector2.ZERO  # Reset velocity
		queue_teleport = Vector2.ZERO  # Clear the teleport request
