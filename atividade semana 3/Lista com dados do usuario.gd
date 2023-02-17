extends Node2D

var dado1
var dado2
var dado3

func _on_Button_pressed():
	dado1 = float($dado1.text)
	dado2 = float($dado2.text)
	dado3 = float($dado3.text)
	
	var lista2= [dado1,dado2,dado3]
	
	$Label.text = "Lista: "+ String(lista2)

pass 
