extends Node2D

# Load the scene
var meteor_scene: PackedScene = load("res://scenes/meteorGrayMed.tscn")

func _on_meteor_timer_timeout():
	var meteor = meteor_scene.instantiate()
	$Meteors.add_child(meteor)
	
