extends CharacterBody2D
var expl = preload("res://Event/drone/drone_expl.tscn")
const ACCELERATION = 300.0
const MAX_SPEED = 300.0

func _physics_process(delta: float) -> void:
	var dir = ($"../Player".global_position - global_position).normalized()
	velocity += dir * ACCELERATION * delta
	if velocity.length() > MAX_SPEED:
		velocity = velocity.normalized() * MAX_SPEED
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	var ins = expl.instantiate()
	ins.global_position = global_position
	add_sibling(ins)
	queue_free()
