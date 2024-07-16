extends Area2D

func _ready():
	var rng := RandomNumberGenerator.new()
	#start pos
	var width = get_viewport().get_visible_rect().size[0]
	var ranX = rng.randi_range(0,width)
	var ranY = rng.randi_range(-150,-50)
	position=Vector2(ranX,ranY)

func _process(delta):
	position += Vector2(0,1.0) * 400 * delta

func _on_body_entered(body):
	print("Hit by " + str(body))
