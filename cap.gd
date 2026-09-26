extends Node2D
@export var capacitance: int = 500
@export var voltage: int = 15



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		GameController.item_collected(0, (str(capacitance) + " " + str(voltage)))
		self.queue_free()
