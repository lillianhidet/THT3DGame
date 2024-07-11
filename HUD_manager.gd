extends Control

@export var life_vallbl:Label
@export var time_vallbl:Label
@export var winlose_lbl:Label


func update_life(life:String):
	life_vallbl.text = life

func update_time(time:String):
	time_vallbl.text = time

func show_win_lose(text:String):
	winlose_lbl.text = text
	winlose_lbl.visible = true
# Called when the node enters the scene tree for the first time.

