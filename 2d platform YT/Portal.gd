extends Area2D

export var nxtLevel : PackedScene
onready var animPlayer : AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node) -> void:
	transition()

func transition() :
	animPlayer.play("fade")
	yield(animPlayer,"animation_finished")
	get_tree().change_scene_to(nxtLevel)
	
