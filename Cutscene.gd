extends Node2D

onready var anim = $AnimationPlayer

func _ready():
	$AnimationPlayer.play()
