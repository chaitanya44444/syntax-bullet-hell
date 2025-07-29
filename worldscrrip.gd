extends Node2D
const b = preload("res://scenes/menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signalmanager.bossdead.connect(bossdead)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func bossdead():
	$CanvasLayer/AnimationPlayer.play("afterdeathboss")
	await get_tree().create_timer(4.0).timeout
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
