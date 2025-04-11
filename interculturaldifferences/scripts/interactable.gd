@tool
extends Node2D

@export var texture: Texture2D:
	set(value):
		texture = value
		if $Sprite2D:
			$Sprite2D.texture = texture

var player_in_area = false

func _ready():
	if not Engine.is_editor_hint():
		$Sprite2D.texture = texture

func _process(delta):
	if player_in_area and Input.is_action_just_pressed("interact"):
		Language.known_letters.merge({"c": true, "i": true, "t": true, "y": true}, true)

func _on_area_2d_body_entered(body):
	if body.name == "Player": 
		player_in_area = true

func _on_area_2d_body_exited(body):
	if body.name == "Player":
		player_in_area = false
