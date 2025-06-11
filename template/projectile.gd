extends KinematicBody2D

var vel=Vector2(0,0)

func _ready():
	rotation=vel.angle()+PI/2

func _process(delta):
	update_state(delta)
	rotation=vel.angle()+PI/2
	var collision=move_and_collide(vel*delta)
	if collision:
		collide_action(collision.collider)
	if position.length()>10000:
		queue_free()
		

func update_state(delta):
	pass

func collide_action(collider):
	queue_free()
	#print(collider)
	#pass
