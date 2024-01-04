extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		toggle()

func toggle(): 
	visible = !visible
	get_tree().paused = visible

func _on_quit_pressed():
	get_tree().quit()

func _on_resume_pressed():
	toggle()
	get_tree().paused = false
