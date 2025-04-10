extends Area2D

@export var word = ""
var player_in_area = false

@onready var label = $Label

func _ready():
	label.visible = false

func _process(delta):
	if player_in_area and Input.is_action_just_pressed("interact"):
		label.text = word
		label.visible = true

func _on_body_entered(body):
	if body.name == "Player":
		player_in_area = true

func _on_body_exited(body):
	if body.name == "Player":
		player_in_area = false
		label.visible = false
