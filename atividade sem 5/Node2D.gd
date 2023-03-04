extends Node2D

var teste = false
var valor = 0
var numero = 0 # nao pode ter acento
var lista = [] #nao declarou a variavel como var
var nome # nao digitou a variavel
var parar = false

func _on_Button1_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit1.text) #nao pode ter acento e faltou o $
	nome = str($LineEdit2.text) #essa linha estava ao contraria e faltando () e o tipo de dado da variavel

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #variavel estava com letra maiscula quando nao deve
		lista.append(numero) #variavel foi escrita com letra maiscula
		$Label.text = ""+ String(numero) #escrito sem o "" e + string()


func _on_Button3_pressed():
#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in range(len(lista)):
		if parar :
			return
		var cont=0 # nao declarou essa variavel
		
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
			$Label2.text = ""+ String(nome) # escrita de maneira errada e sem tab
			parar = true
			
