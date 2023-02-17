extends Node2D

var dado1
var num

func _on_Button_pressed():
	dado1 = float($dado1.text)
	
	num = dado1
	$Label.text = "seu numero:"+ String(num)
	
pass
