extends Node2D

@onready var rock = preload("res://scenes/rock.tscn")
@onready var deer = preload("res://scenes/deer.tscn")
@onready var rock_item
@onready var deer_item
	
func create():		
	rock_item = rock.instantiate() 
	deer_item = deer.instantiate()
	
	var items = [rock_item, rock_item, rock_item, rock_item, rock_item, rock_item, deer_item]
	var chosen_item = items.pick_random()
	
	$Items.add_child(chosen_item)
	
	var children = $Positions.get_children()
	
	chosen_item.global_position = children.pick_random().global_position


func _on_timer_timeout():
	create()


func _on_area_2d_area_entered(area):
	area.free()
	
func stop():
	$Timer.stop()
	
	for item in $Items.get_children():
		item.free()
