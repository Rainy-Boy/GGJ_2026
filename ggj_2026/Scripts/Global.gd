extends Node

enum Masks {
	GAS,
	COVID,
	#JANITOR,
	#OFFICE,
	#GUARD,
	FACE,
	NONE = -1
}

var maskNames = {
	Masks.GAS: "Gas mask",
	Masks.COVID: "Covid mask",
	#Masks.JANITOR: "Janitor mask",
	#Masks.OFFICE: "Office mask",
	#Masks.GUARD: "Guard mask",
	Masks.FACE: "Face mask",
	Masks.NONE: "Default"
}
