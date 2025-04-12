extends Node2D


func _on_play_pressed():
	$AnimationPlayer.play("instruction")
	await get_tree().create_timer(5.0).timeout
	
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
