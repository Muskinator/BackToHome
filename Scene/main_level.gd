extends Control
@onready var button_lvl_1 = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl_1 as Button

const lvl_1 = preload("res://Scene/Lvl1.tscn") as PackedScene

func _ready():
	button_lvl_1.button_down.connect(btn_1)

func btn_1() -> void:
	get_tree().change_scene_to_packed(lvl_1)
