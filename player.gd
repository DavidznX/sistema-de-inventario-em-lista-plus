extends CharacterBody2D


var SPEED = 300.0
@onready var inventario: Control = $inventario

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
	if inventario.visible == false:
		inventario.visible = true
		SPEED = 0
	else:
		inventario.visible = false
		SPEED = 300
	
	
func captar_item(item):
	inventario.guardar_item(item)
