extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player=get_parent().get_node("Player")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	var diff=player.position-position
	position+=diff*diff.length()*.001


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
