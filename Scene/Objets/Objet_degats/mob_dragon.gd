extends CharacterBody2D
@onready var game_manager = %"Game Manager"

# Variables pour la vitesse de déplacement et la direction
var speed = 100
var direction = Vector2.ZERO

func _ready():
	# Générer une direction aléatoire initiale
	generate_random_direction()

func _process(delta):
	# Vérifier si le personnage est hors de l'écran
	if position.x < 0 or position.x > get_viewport_rect().size.x or position.y < 0 or position.y > get_viewport_rect().size.y:
		# Générer une nouvelle direction aléatoire
		generate_random_direction()

	# Déplacer le personnage selon la direction et la vitesse
	move_and_slide()

	# Ajouter une légère variation de vitesse pour un mouvement plus aléatoire
	speed = randf_range(80, 120)


# Fonction pour générer une direction aléatoire
func generate_random_direction():
	direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()


func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		game_manager.Lose_Life()
