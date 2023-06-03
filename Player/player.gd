extends CharacterBody2D
@export var speed: int = 70
@onready var animations = $AnimationPlayer

func updateAnimation():
	if velocity.length() == 0:
		animations.stop()
	else:
		var direction = "Down"
		if velocity.x < 0:direction = 'Left'
		elif velocity.x > 0: direction = 'Right'
		elif velocity.y < 0: direction = "Up"
		elif velocity.y > 0: direction = 'Down'
	
		animations.play('walk' + direction)
	
func inputMovement():
	var inputDirection = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = inputDirection * speed

func _physics_process(delta):
	inputMovement()
	move_and_slide()
	updateAnimation()
