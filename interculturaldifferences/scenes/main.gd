extends Node2D

func _ready() -> void:
	$AnimatedSprite2D.play("default")
	$AudioStreamPlayer2D.play()
	GLOBAL.the_end.connect(_on_the_end)
	
func _on_the_end(data):
	print('olaaaa')
	if data == "end":
		get_tree().change_scene_to_file("res://scenes/the_end.tscn")
