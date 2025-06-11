extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const bullet1=preload("res://bullet1.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Player_Shoot(dir,pos):
	var inst=bullet1.instance()
	inst.velocity=dir.normalized()*10
	inst.position=pos+dir.normalized()*70
	add_child(inst)