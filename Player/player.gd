extends CharacterBody2D
const SPEED = 300.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	if Input.is_action_just_pressed("space"):
		$Timer.start(0.3)
	if !$Timer.is_stopped():
		velocity = direction * SPEED * 3
	move_and_slide()
