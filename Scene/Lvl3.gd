extends Node2D

@onready var heartsContainer = $CanvasLayer/heartsContainer
@onready var character_body_2d = $CharacterBody2D

func _ready():
	heartsContainer.setMaxHearts(character_body_2d.maxHealth)
	heartsContainer.updateHearts(character_body_2d.currentHealth)
	character_body_2d.healthChanged.connect(heartsContainer.updateHearts)
