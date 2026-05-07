extends RigidBody3D

@export var force = 15

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1

	if direction != Vector3.ZERO:
		apply_central_force(direction.normalized() * force)
