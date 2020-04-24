extends Node2D

onready var anim = $CanvasLayer/TextureRect/AnimationPlayer

export var  level1 : PackedScene
func _ready() -> void:
	anim.play("startAnim")


func _on_Button_pressed() -> void:
	get_tree().change_scene_to(level1)
