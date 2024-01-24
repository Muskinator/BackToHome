extends Control
@onready var button_lvl_1 = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl_1 as Button
@onready var button_lvl_2 = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl_2 as Button
@onready var button_lvl_3 = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl_3 as Button


const lvl_1 = preload("res://Scene/Levels/Level1/Lvl1.tscn") as PackedScene
const lvl_2 = preload("res://Scene/Levels/Level2/Lvl2.tscn") as PackedScene
const lvl_3 = preload("res://Scene/Levels/Level3/Lvl3.tscn") as PackedScene

func _ready():
	button_lvl_1.button_down.connect(btn_1)
	button_lvl_2.button_down.connect(btn_2)
	button_lvl_3.button_down.connect(btn_3)

func btn_1() -> void:
	get_tree().change_scene_to_packed(lvl_1)
	
func btn_2() -> void:
	get_tree().change_scene_to_packed(lvl_2)
	
func btn_3() -> void:
	get_tree().change_scene_to_packed(lvl_3)
