extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel=Vector2(0,0)
onready var animator=get_node("AnimatedSprite")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	if vel.x>0:
		animator.flip_h=false
	if vel.x<0:
		animator.flip_h=true
	if vel.length()>0:
		animator.play("right")
	else:
		animator.play("idle")

	move_and_collide(vel)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
