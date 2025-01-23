extends Tank

func control():
	# Garante que o controle do personagem seja funcional
	if $weapon:
		$weapon.look_at(get_global_mouse_position())

	# Atualiza a direção de rotação e o movimento
	rotation_direction = Input.get_axis("left", "right")
	velocity = transform.x * Input.get_axis("down", "up") * speed
