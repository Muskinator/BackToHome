extends Control
class_name MainMenu

@onready var button_start = $MarginContainer/HBoxContainer/VBoxContainer/Button_Start as Button
@onready var button_lvl = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl as Button 
@onready var button_exit = $MarginContainer/HBoxContainer/VBoxContainer/Button_Exit as Button
@onready var start_level = preload("res://Scene/Lvl1.tscn") as PackedScene
const main_level = preload("res://Scene/main_level.tscn") as PackedScene

func _ready():
	button_start.button_down.connect(on_start_press)
	button_exit.button_down.connect(on_exit_press)
	button_lvl.button_down.connect(on_level_press)
	

func on_start_press() -> void:
	get_tree().change_scene_to_packed(start_level)
	
func on_level_press() -> void:
	get_tree().change_scene_to_packed(main_level)
	
func on_exit_press() -> void: 
	get_tree().quit()
	
