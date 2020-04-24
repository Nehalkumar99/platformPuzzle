extends base1

func _physics_process(delta: float) -> void:
	velocity=move_and_slide(velocity,Vector2.UP)

