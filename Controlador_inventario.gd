extends Node
var inventario = []
@onready var slot_interativo: Slot = $inventario/lista_de_itens/Slot_interativo

@onready var lista_de_itens: VBoxContainer = $lista_de_itens


func _process(delta: float) -> void:
	pass
	#listar_os_itens_no_invetario()
	
func guardar_item(dados_itens_coletados):
	var novo_item_coletado = dados_itens_coletados[0]
	var quantidade_novo_item = dados_itens_coletados[1]
	if novo_item_coletado.amontuavel == true:
		for slot in inventario:
			if slot[0] == novo_item_coletado:
				slot[1]+=quantidade_novo_item
	inventario.append(dados_itens_coletados)
	render_inventario()
	listar_os_itens_no_invetario()
	print(dados_itens_coletados[0].nome, dados_itens_coletados[1])	

func listar_os_itens_no_invetario():
	print(inventario)


func render_inventario():
	if inventario.size() == 0:
		return
	else:
		var slot = inventario[0]
		var item = slot[0]
		var qtd = slot[1]
		var qtd_convertida = str(qtd)
		for i in inventario:
			slot_interativo.nome_item.text = item.nome
			slot_interativo.quantidade.text =  str(qtd_convertida)
	
func jogar_item_fora(item):
	pass
