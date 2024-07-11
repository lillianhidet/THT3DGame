extends Node3D


@export var spawn_delay_lower = 2
@export var spawn_delay_upper = 4
@export var enemy_scene:PackedScene
var ready_to_spawn = true
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(ready_to_spawn):
		ready_to_spawn = false
		var rng = RandomNumberGenerator.new()
		var t = get_tree().create_timer(rng.randi_range(spawn_delay_lower, spawn_delay_upper))
		t.timeout.connect(spawnEnemy)
	
func spawnEnemy():
	var n = enemy_scene.instantiate()
	add_child(n)
	n.global_position = global_position
	ready_to_spawn = true
	pass
