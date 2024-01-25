extends Node

@onready var hearts_label = %HeartsLabel

var lives = 3

func Lose_Life():
	lives -= 1
	if lives <= 0:
		get_tree().reload_current_scene()
	else :
		print(lives)
		hearts_label.text = "Hearts : "+ str(lives)
		
		
	
	
