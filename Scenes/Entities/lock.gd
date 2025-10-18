extends Area3D

var open_gate = false

func _on_body_entered(body):
	call_deferred("_deferred_body_entered", body)

func _deferred_body_entered(body):
	if open_gate == true and body is Player:
		get_tree().change_scene_to_file("res://Scenes/UI/you_won.tscn")

func _on_player_all_keys_collected():
	open_gate = true
	$"../../CanvasLayer/Label2".visible = true
