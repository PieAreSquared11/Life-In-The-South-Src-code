extends Node2D

@onready var finish = preload("res://scenes/finish.tscn")

@onready var player = $PWRocks/Player

func _physics_process(delta):
	if Input.is_action_just_pressed("retry"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

func _on_area_2d_body_entered(body):
	player.free()
	$PWRocks/SpawnMarkers.stop()
	await get_tree().create_timer(.5).timeout
	
	var finish_item = finish.instantiate()
	add_child(finish_item)
