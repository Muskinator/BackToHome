extends Area2D

@onready var game_manager = %"Game Manager"
@onready var collected = $Collected



func _on_body_entered(body: Node ) -> void:
	if (body.name == "CharacterBody2D"):
		collected.playing = true
		queue_free()
		game_manager.add_points()


