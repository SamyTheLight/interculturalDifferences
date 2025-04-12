extends CharacterBody2D

@export var speed = 200.0
@export var jump_velocity = -400.0
@export var gravity = 1000.0
@onready var actionable_finder = %ActionablaFinder
# Obtenemos una referencia al Sprite
@onready var sprite = $Sprite2D

func _unhandled_input(event: InputEvent) -> void:
	if GLOBAL.can_move and Input.is_action_just_pressed("interact"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return

func _physics_process(delta):
	if not GLOBAL.can_move:
		return
	# Gravedad
	if not is_on_floor():
		velocity.y += gravity * delta

	# Movimiento horizontal
	var direction = Input.get_axis("left", "right")
	velocity.x = direction * speed

	# Salto
	if Input.is_action_just_pressed("jump") and is_on_floor():
		$AnimationPlayer.play("jumping")
		velocity.y = jump_velocity
	#Rotar segun direccion
	elif is_on_floor():
		if direction != 0:
			$AnimationPlayer.play("walking")
			sprite.flip_h = direction < 0
		elif is_on_floor():
			$AnimationPlayer.play("RESET") 

	move_and_slide()
