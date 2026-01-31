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

var _equippedMask = Global.Masks.NONE
var equippedMask = Global.Masks.NONE : set = set_equipped_mask, get = get_equipped_mask

@onready var sprite_neutral = $Sprites/Neutral
@onready var sprite_covered_a = $Sprites/CoveredA
@onready var sprite_covered_b = $Sprites/CoveredB
@onready var sprite_smiling = $Sprites/CoveredB

@onready var face_sprites = [
	sprite_neutral,
	sprite_covered_a,
	sprite_covered_b,
	sprite_smiling,
]

func set_equipped_mask(new_value):
	_equippedMask = new_value
	update_animation()

func get_equipped_mask():
	return _equippedMask

func update_animation():
	var current_mask = get_equipped_mask();

	for sprite in face_sprites:
		sprite.visible = false

	match current_mask:
		Global.Masks.NONE:
			sprite_neutral.visible = true
		Global.Masks.GAS:
			sprite_covered_b.visible = true
		Global.Masks.COVID:
			sprite_covered_a.visible = true

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()


func _ready():
	update_animation()
