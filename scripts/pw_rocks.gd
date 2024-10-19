extends Node2D

@onready var marker_1 = $Markers/Pos1
@onready var marker_2 = $Markers/Pos2
@onready var markers = $Markers
@onready var area = $Area2D
@onready var spawn_markers = [$SpawnMarkers/Positions/Pos1, $SpawnMarkers/Positions/Pos2, $SpawnMarkers/Positions/Pos3, $SpawnMarkers/Positions/Pos4, $SpawnMarkers/Positions/Pos5]

@onready var player = $Player

func _physics_process(delta):
	for marker in spawn_markers:
		marker.global_position.x += 10
		
	area.global_position.x += 10
	markers.global_position.x += 10
