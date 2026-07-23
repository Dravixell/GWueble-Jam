extends Node2D
var a = [{"id": 1, "def": 10, "cur": 10, "name": "spike", "num": 0, "spawn": preload("res://Event/Spike/spikeSpawn.tscn")},
 {"id": 2, "def": 7, "cur": 7, "name": "drone", "spawn": preload("res://Event/drone/droneSpawn.tscn")}]
var b = []
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("e"):
		var temp: int = 0
		for i in range(a.size()):
			temp += a[i].cur
		temp = randi_range(1, temp)
		for i in range(a.size()):
			temp -= a[i].cur
			if (temp <= 0):
				passOn(i + 1)
				break

func passOn(id: int):
	if id == 1:
		spike()
	elif id == 2:
		drone()

func spike():
	var temp = randi_range(2, 8)
	for i in range(temp):
		var ins = a[0].spawn.instantiate()
		add_child(ins)
	a[1].num = temp

func drone():
	print(2)
	var ins = a[1].spawn.instantiate()
	add_child(ins)
