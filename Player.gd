extends CharacterBody2D

var move_speed : float = 200.0

func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 60 * delta
	
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 60 * delta
		
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 60 * delta
	
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 60 * delta
		
	velocity *= move_speed
	
	move_and_slide()
