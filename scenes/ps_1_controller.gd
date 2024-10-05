extends Node3D

@onready var Controller: Node3D = $"."
@onready var ps1Sound: AudioStreamPlayer = $Ps1Sound
@onready var area: Area3D = $Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Controller.rotate(Vector3(0,1,0), 0.01)
	
# Function triggered when a body enters the Area3D
func _on_area_3d_body_entered(body: Node3D) -> void:
	Globals.point = true
	ps1Sound.play()  # Reproduce el sonido cuando un cuerpo entra en el área
	Controller.visible = false
	await ps1Sound.finished
	queue_free()
