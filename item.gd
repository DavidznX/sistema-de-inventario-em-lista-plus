extends Node2D

@export var item_data: Item


func _ready() -> void:
	$textura.texture = item_data.textura_item
