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
	if dialogue_resource:
		$Sprite2D/AnimationPlayer.play("interact")
	else:
		$Sprite2D/Interaction.hide()
	if not Engine.is_editor_hint():
		$Sprite2D.texture = texture


func _on_actionable_dialogue_started() -> void:
	$Sprite2D/AnimationPlayer.stop()
	$Sprite2D/Interaction.hide()
		
