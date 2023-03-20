extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MainMenu/VBoxContainer/Inicio.grab_focus()#Controle do menu atraves de setas e o enter


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Inicio_pressed():
	get_tree().change_scene("res://Fase.tscn")#ir para fase do jogo



func _on_Tema_do_Jogo_pressed():
	get_tree().change_scene("res://Tema.tscn")#ir para a explicação do tema

func _on_Sair_pressed():
	get_tree().quit()#sair do jogo


