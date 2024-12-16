extends Node3D

@export var display_to_lens = 4.0
@export var display_width = 16.02
@export var eye_height = 1.85

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var interface = XRServer.find_interface("Native mobile")
	
	interface.display_to_lens = display_to_lens
	interface.display_width = display_width
	interface.eye_height = eye_height
	
	if interface and interface.initialize():
		get_viewport().use_xr = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
