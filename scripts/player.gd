
extends KinematicBody2D

var id = 0
var name = ""
export var hp = 100
export var mp = 100
export var moveSpeed = 5
export var attackSpeed = 10
export var meleeDamage = 10
export var rangedDamage = 10

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	var up = Input.is_action_pressed("ui_up")
	var down = Input.is_action_pressed("ui_down")
	
	if left:
		move(Vector2(-moveSpeed, 0.0))
	if right:
		move(Vector2(moveSpeed, 0.0))
	if up:
		move(Vector2(0.0, -moveSpeed))
	if down:
		move(Vector2(0.0, moveSpeed))
		
	get_node("/root/Game/Camera").set_pos(self.get_pos())


