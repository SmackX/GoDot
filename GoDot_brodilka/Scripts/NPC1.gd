extends KinematicBody2D

var speed = 200;
var check = false;
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	var velocity = Vector2()
	if speed >= 250:
		check = true		
	if speed <= 150:
		check = false
		
		
	if check == true:
		velocity.x -= speed * 0.3
		speed -= 1
	if check == false:
		velocity.x += speed * 0.3
		speed += 1	
		
	
	move_and_slide(velocity)
	
	position.x = clamp(position.x, 0, 970)
	position.y = clamp(position.y, 0, 510)
