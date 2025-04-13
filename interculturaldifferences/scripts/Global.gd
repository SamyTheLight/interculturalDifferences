extends Node

var can_move = true
var finale = false

var important_words = {
	'where': false,
	'do': false,
	'you': false,
	'want': false,
	'to': false,
	'go': false
}

signal the_end

var end_trigger := false

func _process(delta):
	if end_trigger:
		end_trigger = false
		emit_signal("the_end", "end")
