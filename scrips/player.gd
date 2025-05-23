extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 150.0
const JUMP_VELOCITY = -400.0
const oposit_jump = 300

func play_die_ani():
	animated_sprite.play("death")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	#flips sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	#plays swim animation
	if direction == 0:
		animated_sprite.play("idle")
	else:
		animated_sprite.play("swim")
	
	
	
	
	#Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_kill_box_player_died() -> void:
	print("kfjhdsiozpgvwe")
	animated_sprite.play("death")
