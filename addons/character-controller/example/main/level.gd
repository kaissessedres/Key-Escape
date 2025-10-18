extends Node3D

var player_health = 10

	
func _process(delta):
	if player_health == 0:
		get_tree().change_scene_to_file("res://Scenes/UI/game_over.tscn")


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit() # Quits the game


func _on_player_damage():
	player_health -= 1
