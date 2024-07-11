extends Node

var game_length = 60
var HUD
var timer
# Called when the node enters the scene tree for the first time.
func _ready():
	HUD = get_tree().root.get_node("World/HUD")
	timer = get_tree().create_timer(game_length)
	timer.timeout.connect(win_game)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var time = str(timer.get_time_left())
	time = time.erase(5, 15)
	HUD.update_time(time)
	
func win_game():
	HUD.show_win_lose("You Win!")
	start_close_game()
	
	
func start_close_game():
	var tq = get_tree().create_timer(2)
	tq.timeout.connect(get_tree().quit)
	
