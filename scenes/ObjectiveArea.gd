extends Area2D

@onready var button = $WinUI/Button  # Reference to the Button node
@onready var win_ui = $WinUI  # Reference to the WinUI node
var bodyNow

# Reset the RigidBody2D when it enters the area
func _on_ObjectiveArea_body_entered(body):
	if body is RigidBody2D and body.name == "Ufo":
		print("You've Did it!")
		# Stop movement
		body.linear_velocity = Vector2.ZERO
		body.freeze = true  # Freeze physics completely
		body.set_freeze_mode(RigidBody2D.FREEZE_MODE_KINEMATIC)  # Optional: Freeze as Kinematic
		bodyNow = body
		# Show WinUI
		win_ui.visible = true

# Function when the button is pressed down
func _on_button_button_down():
	button.scale = Vector2(0.9, 0.9)  # Make button smaller when pressed

# Function when the button is released
func _on_button_button_up():
	button.scale = Vector2(1, 1)  # Reset button size
	win_ui.visible = false  # Hide WinUI

	# Unfreeze the body invalid access of index '0' on a base object of type 'Array[Node]"
	bodyNow.queue_teleport = Vector2(70, 450)  # Teleport position
	bodyNow.freeze = false  # Unfreeze physics
	bodyNow.set_freeze_mode(RigidBody2D.FREEZE_MODE_STATIC)  # Set to default mode
	bodyNow.linear_velocity = Vector2(100, 0)  # Give an initial movement
