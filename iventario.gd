extends Control

var inventario = []

@onready var lista_de_itens: VBoxContainer = $lista_de_itens

var SlotScene = preload("res://slot.tscn")

func guardar_item(item):
	inventario.append(item)
	
	var slot = SlotScene.instantiate()
	slot.nome_item.text = item.nome
	
	lista_de_itens.add_child(slot)
