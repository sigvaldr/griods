extends Node2D
@export var speed := 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(str(Engine.get_frames_per_second()))
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
