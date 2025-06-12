extends KinematicBody2D
class_name Character

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vel=Vector2(0,0)
onready var animator=get_node("AnimatedSprite")
var health_info=Vector2(100,100) #Health/Max health
var sprite_facing_right=true
var dead=false
var team=1 #1=friendly 2=hostile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	z_index=position.y
	update_state(delta)
	if vel.x>0:
		animator.flip_h=!sprite_facing_right
	if vel.x<0:
		animator.flip_h=sprite_facing_right
	if vel.length()>0:
		animator.play("right")
	else:
		animator.play("idle")
	move_and_slide(vel)

func update_state(delta):
	#print("called")
	pass

func damage(value):
	health_info.x-=value
	if health_info.x<=0:
		dead=true
		on_death()

func on_death():
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
