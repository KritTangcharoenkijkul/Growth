extends Control


onready var text = get_parent().get_node("Dialogue").dialogue_1
var dialogue_index = 0
var finished
var active
var current_choice = 0
var position
var expression

func _ready():
	load_dialogue()
	
func _physics_process(delta):
	if active:
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogue()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
				
				
		if $TextBox/Label.text == "Police":
			$Officer.visible = true
			if position == "1": 
				$Officer.global_position = get_parent().get_node("1").position
			if position == "2":
				$Officer.global_position = get_parent().get_node("2").position
				
				
		if $TextBox/Label.text == "Alice":
			$Girl.visible = true
			if position == "1":
				$Girl.global_position = get_parent().get_node("1").position
			if position == "2":
				$Girl.global_position = get_parent().get_node("2").position
			if position == "3":
				$Girl.global_position = get_parent().get_node("3").position
			if position == "4":
				$Girl.global_position = get_parent().get_node("4").position
				
		
				
		if $Button.text == "":
			$Button.visible = false
		else:
			$Button.visible = true
			
		if $Button2.text == "":
			$Button2.visible = false
		else:
			$Button2.visible = true
			
			
	

func load_dialogue():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		$TextBox/Label.text = text[dialogue_index]["Name"]
		$Button.text = text[dialogue_index]["Choices"][0]
		$Button2.text = text[dialogue_index]["Choices"][1]
		
		position = text[dialogue_index]["Position"]
		expression = text[dialogue_index]["Expression"]
		
		$TextBox/RichTextLabel.percent_visible = 0
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0,1,2,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$TextBox/Tween.start()
		
	else:
		$TextBox.visible = false
		finished = true
		active = false
	dialogue_index += 1
	
func _on_Tween_tween_completed(object, key):
	finished = true
		
func _on_Button_pressed():
	if $Button.text == "It was me":
		$Button.text = ""
		$Button2.text = ""
		text = get_parent().get_node("Dialogue").after_choice_1
		dialogue_index = 0
		load_dialogue()
		

func _on_Button2_pressed():
	if $Button2.text == "It is you! Officer!":
		$Button.text = ""
		$Button2.text = ""
		text = get_parent().get_node("Dialogue").after_choice_2
		dialogue_index = 0
		load_dialogue()
		
	elif $Button2.text == "Go Back":
		get_tree().change_scene("res://MainMenu.tscn")
