extends Node3D

@export var health = 1
@export var speed = .5

var targetNode
var lerp_t = 0
var startPosition

# Called when the node enters the scene tree for the first time.
func _ready():
	targetNode = get_tree().root.get_node("World/%Objective")
	startPosition = global_position
	 # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	lerp_t += delta * speed
	if(lerp_t < 1):
		look_at(targetNode.global_position)
		global_position = lerp(startPosition, targetNode.global_position, lerp_t)
	
	
