extends Node3D

@export var health = 3
var HUD

func _ready():
	HUD = get_tree().root.get_node("World/HUD")
	HUD.update_life(str(health))
	
func entered(area: Area3D):
	if(area.is_in_group("enemy")):
		health = health - 1
		area.get_parent().queue_free()
		HUD.update_life(str(health))
		
		if(health <= 0):
			HUD.show_win_lose("You Lose!")
			GameTimer.start_close_game()
	

