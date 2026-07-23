extends Area2D
var spike = preload("res://Event/Spike/spike.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_timer_timeout() -> void:
	if get_overlapping_bodies().size() + get_overlapping_areas().size()  > 0:
		global_position = Vector2(randf_range(-546.0, 546.0), randf_range(-290.0, 290.0))
		print("repo")
	else:
		var ins = spike.instantiate()
		add_sibling(ins)
		ins.global_position = global_position
		print("free")
		queue_free()
