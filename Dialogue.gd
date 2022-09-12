extends Node

var dialogue_1 = [
	{
	"Name": "Police",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "Rapid Investigator, we need your help! Someone killed the politician.",
	},
	{
	"Name": "Rapid Investigator",
	"Expression": "Neutral",
	"Position": "3",
	"Choices" : ["", ""],
	"Text": "Say no more Mr. Police, because I knew who is the criminal already?",
	},
	{
	"Name": "Police",
	"Expression": "Happy",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "What? Who is it?",
	},
	{
	"Name": "Police",
	"Expression": "Neutral",
	"Position": "2",
	"Choices" : ["It was me", "It is you! Officer!"],
	"Text": "Tell me investigator?",
	},
	
]




var after_choice_1 = [
	{
	"Name": "Police",
	"Expression": "Happy",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "How could you be the one to do it?",
	},
	{
	"Name": "Rapid Investigator",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "Well, I may be wrong but I am a rapid investigator",
	},
	{
	"Name": "",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "The End",
	},
	{
	"Name": " ",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", "Go Back"],
	"Text": "The End",
	},
]

var after_choice_2 = [
	{
	"Name": "Police",
	"Expression": "Happy",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "No way! I didn't do that sir?",
	},
	{
	"Name": "Rapid Investigator",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "You are not! But I am quite rapid ain't I!",
	},
	{
	"Name": "",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", ""],
	"Text": "The End!",
	},
	{
	"Name": " ",
	"Expression": "Neutral",
	"Position": "1",
	"Choices" : ["", "Go Back"],
	"Text": "The End!",
	},
]
