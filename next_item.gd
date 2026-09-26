extends Control
@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Eventcontroller.connect("next_item_collected", on_item_collected)
	GameController.inital_item()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_item_collected(value: String):
	label.text = "Next Item:\n" + value
