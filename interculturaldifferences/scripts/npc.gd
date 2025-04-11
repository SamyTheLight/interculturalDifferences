@tool
extends Node


@export var dialogue_resource: DialogueResource

@export var texture: Texture2D:
	set(value):
		texture = value
		if %Sprite2D:
			%Sprite2D.texture = texture

func _ready():
	var actionable = %Actionable
	if actionable:
		actionable.dialogue_resource = dialogue_resource
	
	if not Engine.is_editor_hint():
		$Sprite2D.texture = texture
