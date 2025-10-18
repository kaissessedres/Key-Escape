extends Area3D

signal key_collected

func on_ready():
	add_to_group("keys")

func _on_body_entered(body):
	if body is Player:
		key_collected.emit()
		queue_free()
