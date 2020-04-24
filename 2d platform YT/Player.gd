extends base1
export var jump := 1000

func _physics_process(delta: float) -> void:
	var direction:=Vector2(Input.get_action_strength("move_right")
		-Input.get_action_strength("move_left"),
		-1.0 if Input.is_action_just_pressed("move_up")
		and is_on_floor() else 1.0)
	
	velocity.y += gravity*delta
	if velocity.y>maxSpeed.y:
		velocity.y=maxSpeed.y
	if direction.y==-1.0:
		velocity.y=-1*jump
	if Input.is_action_just_released("move_up")and velocity.y<0.0:
		velocity.y=0
	velocity.x=maxSpeed.x*direction.x
	velocity = move_and_slide(velocity,Vector2.UP)
