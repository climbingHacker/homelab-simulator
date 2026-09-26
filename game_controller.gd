extends Node
const types = ["cap", "resistor", "transistor"]
var items_needed = [{"type": 0, "capacitance":500, "voltage":15}]
var current = 0
var text = ""

func inital_item():
	match items_needed[current]["type"]:
		0:
			var typestr = types[items_needed[current]["type"]]
			var capacitance = items_needed[current]["capacitance"]
			var voltage = items_needed[current]["voltage"]
			text = str(capacitance) + "uF \n" + str(voltage) +  "V"
			
		1:
			pass
		2:
			pass
		_:
			pass
	Eventcontroller.emit_signal("next_item_collected", text)

func item_collected(type: int, spec: String):
	if type == items_needed[current]["type"]:
		match type:
			0:
				var capacitance = int(spec.get_slice(" ", 0))
				var voltage = int(spec.get_slice(" ", 1))
				if capacitance == items_needed[current]["capacitance"] and voltage >= items_needed[current]["voltage"]:
					current += 1
				
			1:
				pass
			2:
				pass
			_:
				pass
	else:
		pass
	if current >= len(items_needed):
		queue_free()
		Eventcontroller.emit_signal("win")
		return
	match items_needed[current]["type"]:
			0:
				var typestr = types[items_needed[current]["type"]]
				var capacitance = items_needed[current]["capacitance"]
				var voltage = items_needed[current]["voltage"]
				text = str(capacitance) + "uF \n" + str(voltage) +  "V"
				
			1:
				pass
			2:
				pass
			_:
				pass
	Eventcontroller.emit_signal("next_item_collected", text)
