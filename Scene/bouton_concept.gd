extends CanvasLayer



@onready var button = $Panel/Button



func _ready():
	button.button_down.connect(start_concept_txt)

func start_concept_txt() -> void: 
	get_tree().change_scene_to_file("res://Scene/concept_du_jeu.tscn")

