extends Node
@onready var hearts_label = %HeartsLabel


var lives = 4

func Check_Lives():
	if lives <= 0:
		get_tree().reload_current_scene()

func Lose_Life():
	lives -= 1
	print(lives)
	hearts_label.text = str(lives)
	Check_Lives()
