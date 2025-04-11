extends Node

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
	" ": "/"
}

func texto_a_morse(texto):
	var resultado = []
	for letra in texto.to_lower():
		if letra in morse:
			resultado.append(morse[letra])
		elif letra == " ":
			resultado.append("/") 
	return " ".join(resultado)

func morse_a_texto(codigo):
	var inverso = {}
	for k in morse.keys():
		inverso[morse[k]] = k
	var resultado = []
	for simbolo in codigo.split(" "):
		if simbolo == "/":
			resultado.append(" ")
		elif simbolo in inverso:
			resultado.append(inverso[simbolo])
	return "".join(resultado)
	
	
