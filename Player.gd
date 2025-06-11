extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal Shoot


var vel=Vector2(0,0)
var mousepos=Vector2(0,0)
onready var camera=get_parent().get_node("Camera2D")
onready var animator=get_node("AnimatedSprite")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseMotion:
		mousepos=event.position
func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		emit_signal("Shoot",mousepos-get_viewport_rect().size/2-position+camera.position,position)
	vel=Vector2(0,0)
	if Input.is_key_pressed(KEY_A):
		vel+=Vector2(-1,0)
	if Input.is_key_pressed(KEY_D):
		vel+=Vector2(1,0)
	if Input.is_key_pressed(KEY_W):
		vel+=Vector2(0,-1)
	if Input.is_key_pressed(KEY_S):
		vel+=Vector2(0,1)
	
	vel=vel.normalized()*4
	
	move_and_collide(vel)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
