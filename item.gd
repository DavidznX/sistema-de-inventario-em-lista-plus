extends Node2D

@export var item_data: Item

var player_na_area = false
var player = null

func _ready() -> void:
	$textura.texture = item_data.textura_item

func _process(delta: float) -> void:
	if player_na_area == true:
		print('player_entrou_na_area_item')
		if Input.is_action_just_pressed('acao'):
			player.captar_item(item_data)
			player = null
			player_na_area =  false
			queue_free()
			


func _on_area_interacao_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group('player'):
		player_na_area = true
		player = body
		


func _on_area_interacao_body_exited(body: Node2D) -> void:
		player_na_area = false
		player = null
