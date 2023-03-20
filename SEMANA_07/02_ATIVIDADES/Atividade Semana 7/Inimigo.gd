extends KinematicBody2D

var movimento = Vector2()

func _ready():
	
	pass

func _physics_process(delta):#identificar o jogador
	var Jogador = get_parent().get_node("Jogador")
	
	position += (Jogador.position - position) / 50
	look_at(Jogador.position)
	
	
	move_and_collide(movimento)#movimentação e colisão	


func _on_Area2D_body_entered(body):#função de morrer
	if "Bala" in body.name:
		queue_free()



