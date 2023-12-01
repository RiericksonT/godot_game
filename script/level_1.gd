extends Node2D

@onready var bg_music = $AudioStreamPlayer
@onready var win_music = $Graphics/Win/AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_circuit_body_exited(body):
	get_tree().reload_current_scene()


func show_win_screen(flag: bool):
	$Graphics/Win.visible = flag


func _on_win_area_body_entered(body):
	show_win_screen(true)
	bg_music.stop()
	win_music.play()
