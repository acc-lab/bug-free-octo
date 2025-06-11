extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocity=Vector2(1,1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.f

func _process(delta):
	rotation=velocity.angle()+PI/2
	move_and_collide(velocity)
	
	if position.length()>10000:
		queue_free()
	#call_deferred("free",self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
