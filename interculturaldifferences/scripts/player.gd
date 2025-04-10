extends CharacterBody2D

@export var speed = 200.0
@export var jump_velocity = -400.0
@export var gravity = 1000.0

# Obtenemos una referencia al Sprite
@onready var sprite = $Sprite2D

func _physics_process(delta):
	# Gravedad
	if not is_on_floor():
		velocity.y += gravity * delta

	# Movimiento horizontal
	var direction = Input.get_axis("left", "right")
	velocity.x = direction * speed

	# Salto
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
		
	# Rotar sprite según dirección
	if direction != 0:
		sprite.flip_h = direction < 0

	move_and_slide()
