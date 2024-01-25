extends Area2D


@onready var game_manager = %"Game Manager"

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		game_manager.Lose_Life()
