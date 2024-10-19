extends CharacterBody2D
class_name Player

func _physics_process(delta):
#	player movement
	global_position.x += 10
	
	if Input.is_action_just_pressed("move_up"):
		$AudioStreamPlayer.play()
		global_position.y -= get_viewport_rect().size.y / 7
	elif Input.is_action_just_pressed("move_down"):
		$AudioStreamPlayer.play()
		global_position.y += get_viewport_rect().size.y / 7
		
	if global_position.y < 146:
		global_position.y = 146
	elif global_position.y > 506:
		global_position.y = 506
