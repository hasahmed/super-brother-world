extends RigidBody2D

@onready var animation = get_node("Animation")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if !Input.is_anything_pressed():
		animation.play("stand")
	if (Input.is_action_pressed("right")):
		apply_central_force(Vector2(500, 0))
		animation.play("walk")
		animation.scale.x = 0.5
	if (Input.is_action_pressed("left")):
		animation.scale.x = -0.5
		animation.play("walk")
		apply_central_force(Vector2(-500, 0))
		#animation.scale.x *= -1
		#animation.play("walk")
	if (Input.is_action_just_pressed("jump")):
		apply_central_impulse(Vector2(0, -1000))
		pass
	pass
