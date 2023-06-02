extends CharacterBody2D
@export var speed: int = 40

func inputMovement():
	var inputDirection = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'up_down')
	velocity = inputDirection * speed

func _physics_process(delta):
	inputMovement()
	move_and_slide()
