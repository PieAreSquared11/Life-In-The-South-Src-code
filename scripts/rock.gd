extends Area2D

@onready var rock_crash_scene = preload("res://scenes/rock_crash_screen.tscn")


func _on_body_entered(body):
	if body is Player:
		$AudioStreamPlayer.play()
		body.queue_free()
		get_tree().root.get_child(0).add_child(rock_crash_scene.instantiate())
