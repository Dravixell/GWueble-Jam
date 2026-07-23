extends Area2D

func _ready() -> void:
	await get_tree().physics_frame
	for area in get_overlapping_areas():
		area.queue_free()

func _on_area_entered(area: Area2D) -> void:
	area.queue_free()


func _on_body_entered(body: Node2D) -> void:
	body.queue_free()


func _on_timer_timeout() -> void:
	queue_free()
