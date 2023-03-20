extends Control





func _on_Sair_pressed():
	get_tree().quit()#sair do jogo



func _on_Reiniciar_pressed():
	get_tree().change_scene("res://Fase.tscn")#reiniciar o jogo
