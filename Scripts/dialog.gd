class_name Dialog extends RichTextLabel



#----------------------------------------[-Dialog Script-]-------------------------------------


@onready var output_text_string: String = ""


@export var output_text: Resource
@export var text_path: String = "res://Resources/OutputText/ImportText/TestTextDocument.txt"





func _ready() -> void:
	grabbing_text()
	append_text(output_text_string)
	pass


func _process(delta: float) -> void:
	pass



func grabbing_text():
	var text_file = FileAccess.open(text_path, FileAccess.READ)
	var text
	if text_file.get_as_text() == "":
		text_file.close()
		return 1
	else:
		text = text_file.get_as_text()
		output_text_string = text
		
	text_file.close()
