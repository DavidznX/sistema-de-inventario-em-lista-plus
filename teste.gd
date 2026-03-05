extends Node3D
var inventario = []

@onready var lista_de_itens: VBoxContainer = $lista_de_itens



func _process(delta: float) -> void:
	pass
	
func guardar_item(item):
	inventario.append(item)
	print(item)	

func listar_os_itens_no_invetario():
	print(inventario)
	guardar_item('espada')
	
func jogar_item_fora(item):
	pass
