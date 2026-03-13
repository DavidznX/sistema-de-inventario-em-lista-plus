extends CharacterBody2D


var SPEED = 300.0
@onready var inventario: Node = $inventario

@onready var inventario_control: Control = $inventario/inventario

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed('inventario'):
		abrir_inventario()
	var direction = Vector2.ZERO
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	
	direction = direction.normalized()
	
	velocity = direction * SPEED
	
	move_and_slide()


func abrir_inventario():
	if inventario_control.visible == false:
		inventario_control.visible = true
		SPEED = 0
	else:
		inventario_control.visible = false
		SPEED = 300
	
	
func captar_item(dados_itens_coletados):
	inventario.guardar_item(dados_itens_coletados)
