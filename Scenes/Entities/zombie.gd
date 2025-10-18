extends CharacterBody3D
class_name Zombie

@export var initial_target_path: NodePath
@export var final_target_path: NodePath
@onready var target:Marker3D

var active: bool = false

@export var SPEED = 5

func _ready():
	# Convert NodePaths to actual node references
	if initial_target_path and final_target_path:
# Ensure the NodePaths point to valid nodes before assignment
		if has_node(initial_target_path) and has_node(final_target_path):
			target = get_node(initial_target_path)  # Get the actual node from the NodePath


func _physics_process(_delta):
	
	if target:
		var distance_to_target = position.distance_to(target.global_transform.origin)
	
		if distance_to_target < 2: 
			if target == get_node(initial_target_path):
				target = get_node(final_target_path)
			else:
				target = get_node(initial_target_path)
	
	var direction = (target.position - position).normalized()
	velocity = direction * SPEED
	look_at(target.position, Vector3.UP)
	$AnimationPlayer.play("Walk")
	play_footstep_sound()
	
	if active:
		direction = (Globals.player_pos - position).normalized()
		velocity = direction * SPEED
		look_at(Globals.player_pos)
		$AnimationPlayer.play("Walk")
	
	move_and_slide()
	
#Detect player
func _on_area_3d_body_entered(body):
	if body is Player:
		active = true
		$Pursue.play()
		
func _on_area_3d_body_exited(body):
	if body is Player:
		active = false
		
func play_footstep_sound():
	# Assuming 'FootstepTimer' is the name of your Timer node
	var timer = $"Walking/walk timer"
	if not timer.is_stopped(): # Checks if the timer is currently running
		return # If the timer is running, do not play the sound again

	# Assuming 'FootstepSound' is the name of your AudioStreamPlayer node
	var footstep_sound = $Walking
	footstep_sound.play() # Play the footstep sound
	timer.start() # Start the timer


func _on_player_all_keys_collected():
	$Pursue.unit_size = 1000
	$Area3D/CollisionShape3D.shape.extents = Vector3(100,100,100)
