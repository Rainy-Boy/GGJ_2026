extends CharacterBody2D

@export var speed = 400

var ownedMasks = {
	Global.Masks.GAS: false,
	Global.Masks.COVID: false,
	Global.Masks.JANITOR: false,
	Global.Masks.OFFICE: false,
	Global.Masks.GUARD: false,
	Global.Masks.FACE: false,
}

var equippedMask = Global.Masks.NONE

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
