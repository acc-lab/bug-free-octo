extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal SpawnEnemy


var cumulative_delta=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	cumulative_delta+=delta
	while cumulative_delta>2:
		emit_signal("SpawnEnemy")
		cumulative_delta-=2


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
