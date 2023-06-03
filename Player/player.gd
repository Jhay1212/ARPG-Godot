extends CharacterBody2D
@export var speed: int = 70
@onready var animations = $AnimationPlayer

func update():
	var direction = "Down"
	
func inputMovement():
	var inputDirection = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = inputDirection * speed

func _physics_process(delta):
	inputMovement()
	move_and_slide()
