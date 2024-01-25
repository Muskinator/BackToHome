extends Area2D

@onready var game_manager = %"Game Manager"



func _on_body_entered(body: Node ) -> void:
	if (body.name == "CharacterBody2D"):
		queue_free()


