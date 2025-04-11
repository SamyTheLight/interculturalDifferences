extends Node2D

@export var texture: Texture2D

var player_in_area = false
func _ready():
	var body = $Sprite2D
	if body:
		body.texture = texture


func _process(delta):
	if player_in_area and Input.is_action_just_pressed("interact"):
		Language.known_letters.merge({"c": true, "i": true, "t": true, "y": true}, true)

func _on_area_2d_body_entered(body):
	if body.name == "Player": 
		player_in_area = true

func _on_area_2d_body_exited(body):
	if body.name == "Player":
		player_in_area = false
