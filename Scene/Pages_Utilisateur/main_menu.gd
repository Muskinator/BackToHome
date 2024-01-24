extends Control
class_name MainMenu

@onready var button_start = $MarginContainer/HBoxContainer/VBoxContainer/Button_Start as Button
@onready var button_lvl = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl as Button 
@onready var button_exit = $MarginContainer/HBoxContainer/VBoxContainer/Button_Exit as Button


func _ready():
	button_start.button_down.connect(on_start_press)
	button_exit.button_down.connect(on_exit_press)
	button_lvl.button_down.connect(on_level_press)
	

func on_start_press() -> void:
	get_tree().change_scene_to_file("res://Scene/Levels/Level1/Lvl1.tscn")
	
func on_level_press() -> void:
	get_tree().change_scene_to_file("res://Scene/Pages_Utilisateur/main_level.tscn")
	
func on_exit_press() -> void: 
	get_tree().quit()
	
