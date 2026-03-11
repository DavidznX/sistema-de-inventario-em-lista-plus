extends Node
var inventario = []
@onready var slot_interativo: Slot = $inventario/lista_de_itens/Slot_interativo

@onready var lista_de_itens: VBoxContainer = $lista_de_itens


func _process(delta: float) -> void:
	pass
	
func guardar_item(dados_itens_coletados):
	var novo_item_coletado = dados_itens_coletados[0]
	var quantidade_novo_item = dados_itens_coletados[1]
	if novo_item_coletado.amontuavel == true:
		for slot in inventario:
			if slot[0] == novo_item_coletado:
				slot[1]+=quantidade_novo_item
				return
	inventario.append(dados_itens_coletados)
	print(dados_itens_coletados)	

func listar_os_itens_no_invetario():
	print(inventario)


func render_itens():
	for slot in  inventario:
		slot_interativo.nome_item = inventario[0]
		slot_interativo.quantidade = inventario[1]
	
func jogar_item_fora(item):
	pass
