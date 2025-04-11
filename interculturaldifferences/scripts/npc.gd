extends Node

@export var dialogue_resource: DialogueResource

@export var texture: Texture2D

func _ready():
	var actionable = $Actionable
	if actionable:
		actionable.dialogue_resource = dialogue_resource
	
	var sprite = $Sprite2D
	if sprite:
		sprite.texture = texture
