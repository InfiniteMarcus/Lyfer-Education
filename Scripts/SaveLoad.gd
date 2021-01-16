extends Node

const FILE_NAME = "res://myData.json"

var player = {
	"characterName": ""
}

func save(filename):
	var file = File.new()
	var p = {
	"characterName": filename
	}
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(p))
	file.close()

func load():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			player = data
			return player
		else:
			printerr("Corrupted data!")
	else:
		printerr("No saved data!")
