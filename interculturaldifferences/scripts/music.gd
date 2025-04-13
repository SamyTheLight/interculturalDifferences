extends Area2D

@onready var music_player: AudioStreamPlayer = %Music

var music_a: AudioStream
var music_b: AudioStream
var is_playing_a := true 

func _ready() -> void:
	music_b = preload("res://assets/sounds/ambient_sound.mp3")
	music_a = preload("res://assets/sounds/city_sound.mp3")
	music_player.stream = music_a
	music_player.play()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print('a')
		if is_playing_a:
			music_player.stream = music_b
		else:
			music_player.stream = music_a
		is_playing_a = !is_playing_a
			
		music_player.play()
