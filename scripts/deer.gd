extends Area2D

@onready var deer_crash = preload("res://scenes/deer_crash_screen.tscn")

func _on_body_entered(body):
	if body is Player:
		$AudioStreamPlayer.play()
		body.queue_free()
		get_tree().root.get_child(0).add_child(deer_crash.instantiate())
