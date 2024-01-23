extends CanvasLayer

@onready var menu = $Panel/Menu



func _ready():
	menu.button_down.connect(menu_tuto)

func menu_tuto() -> void : 
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")


