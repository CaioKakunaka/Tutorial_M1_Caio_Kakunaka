extends Node2D

var lista = [1,2,3]


func _on_Button_pressed():
	
	$Label.text = ""+ String(lista)
	
pass 
