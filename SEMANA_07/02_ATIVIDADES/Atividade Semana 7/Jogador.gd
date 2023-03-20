extends KinematicBody2D
 
var velocidade = 400
var bala_velocidade = 1500
var bala = preload("res://Bala.tscn")

func _ready():
	pass
	
func _physics_process(delta):
	var movimento = Vector2()#variavel para o movimento que indica coordenas(X,Y)
	
	if Input.is_action_pressed("cima"):#resposavel pela movimentação para cima
		movimento +=Vector2(0, -1)
	if Input.is_action_pressed("baixo"):#resposavel pela movimentação para baixo
		movimento +=Vector2(0, 1)
	if Input.is_action_pressed("esquerda"):#resposavel pela movimentação para esquerda
		movimento +=Vector2(-1, 0)
	if Input.is_action_pressed("direita"):#resposavel pela movimentação para direita
		movimento +=Vector2(1, 0)

	move_and_slide(movimento * velocidade)#responsavel pela movimentação do jogador
	
	look_at(get_global_mouse_position())#faz o boneco olhar para a posição do mouse
	
	
	if Input.is_action_just_pressed("atirar"):#detectar se o usuario quer atirar
		atirar()#atirar
	
func atirar():#função de atirar a arma
	var bala_instance = bala.instance()
	bala_instance.position = $SaidaBala.get_global_position()#Fazer a bala sair do cano da arma 
	bala_instance.rotation_degrees = rotation_degrees
	bala_instance.apply_impulse(Vector2(),Vector2(bala_velocidade,0).rotated(rotation))
	get_tree().get_root().add_child(bala_instance)
	

	
func morreu():
	get_tree().change_scene("res://Game Over.tscn")#ir para a tela de gameover

func _on_Area2D_body_entered(body):#função de morrer
	if "Inimigo" in body.name:
		morreu()
