extends Control
@onready var button_lvl_1 = $MarginContainer/HBoxContainer/VBoxContainer/Button_lvl_1 as Button


func _ready():
	button_lvl_1.button_down.connect(btn_1)

func btn_1() -> void:
