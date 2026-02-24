extends Control

var inventario = []

@onready var lista_de_itens: VBoxContainer = $lista_de_itens



func guardar_item(item):
	inventario.append(item)
	return item

func listar_os_itens_no_invetario():
	pass
