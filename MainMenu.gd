extends MarginContainer

const first_scene = preload("res://VisualNovel.tscn")
const cutscene = preload("res://Cutscene.tscn")

onready var selector_one = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Label

onready var selector_three = $CenterContainer/VBoxContainer/CenterContainer4/VBoxContainer/CenterContainer/HBoxContainer/Label

var current_selection = 0

func _ready():
	set_current_selection(0)


func _process(delta):
	if Input.is_action_just_pressed("ui_down") and current_selection < 1:
		current_selection += 1
		set_current_selection(current_selection)
		
	
	elif Input.is_action_just_pressed("ui_up") and current_selection > 0:
		current_selection -= 1
		set_current_selection(current_selection)
		
	elif Input.is_action_just_pressed("ui_accept"):
		handle_selection(current_selection)
		
func handle_selection(_current_selection):
	if _current_selection == 0:
		get_parent().add_child(first_scene.instance())
		get_tree().change_scene("res://VisualNovel.tscn")
		
	
	elif _current_selection ==1:
		get_tree().quit()
		

		
func set_current_selection(_current_selection):
	selector_one.text = ""
	selector_three.text = ""
	if _current_selection == 0:
		selector_one.text = ">"
	elif _current_selection == 1:
		selector_three.text = ">"

