extends Node

var level = 0

const morse = {
	"a": ".-",
	"b": "-...",
	"c": "-.-.",
	"d": "-..",
	"e": ".",
	"f": "..-.",
	"g": "--.",
	"h": "....",
	"i": "..",
	"j": ".---",
	"k": "-.-",
	"l": ".-..",
	"m": "--",
	"n": "-.",
	"o": "---",
	"p": ".--.",
	"q": "--.-",
	"r": ".-.",
	"s": "...",
	"t": "-",
	"u": "..-",
	"v": "...-",
	"w": ".--",
	"x": "-..-",
	"y": "-.--",
	"z": "--..",
}
var known_letters = {
	"a": false,
	"b": false,
	"c": false,
	"d": false,
	"e": false,
	"f": false,
	"g": false,
	"h": false,
	"i": false,
	"j": false,
	"k": false,
	"l": false,
	"m": false,
	"n": false,
	"o": false,
	"p": false,
	"q": false,
	"r": false,
	"s": false,
	"t": false,
	"u": false,
	"v": false,
	"w": false,
	"x": false,
	"y": false,
	"z": false,
}
	
func filtrar_letras(texto):
	var resultado = []
	for letra in texto.to_lower():
		if letra in known_letters and not known_letters[letra]:
			if letra in morse:
				resultado.append(morse[letra])
			else:
				resultado.append("?")
		else:
			resultado.append(letra)
	return "".join(resultado)
