extends Node3D

@export var path = "..."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setImage(path)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setImage(res_path):
	var material = StandardMaterial3D.new()
	var image_texture = load(res_path) as CompressedTexture2D
	material.albedo_texture = image_texture	
	material.emission_texture = image_texture
	material.emission_enabled = true
	material.emission_energy_multiplier = 1
	$Display/Screen.set_surface_override_material(0, material)
