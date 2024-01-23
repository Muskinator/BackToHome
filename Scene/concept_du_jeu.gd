extends Control

@onready var menu = $VBoxContainer/Menu
@onready var game = $VBoxContainer/Game
@onready var level = $VBoxContainer/Game2

func _ready():
	menu.button_down.connect(menu_1)
	game.button_down.connect(game_1)
	level.button_down.connect(level_1)
func menu_1() -> void :
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")

func game_1() -> void :
	get_tree().change_scene_to_file("res://Scene/tuto.tscn")

func level_1() -> void :
	get_tree().change_scene_to_file("res://Scene/main_level.tscn")
