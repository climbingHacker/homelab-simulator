extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Eventcontroller.connect("win", show)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func end():
	self.visible = true
