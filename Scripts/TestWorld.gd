extends Node2D

onready var camera1 = $Camera2D
onready var camera2 = $Camera2D2
onready var camera3 = $Camera2D3
onready var camera4 = $Camera2D4
onready var camera5 = $Camera2D5

var currentCamera: Camera2D

func _ready():
	camera1.current = true
	camera5.current = false

	currentCamera = camera1

func _process(_delta):
	if Input.is_action_pressed("shift"):
		camera5.current = true
	else:
		currentCamera.current = true

func _on_Area2D_body_entered(_body:Node): #Change camera zone
	camera1.current = !camera1.current
	currentCamera = camera1

func _on_ChangeCameraZone2_body_entered(_body:Node):
	camera2.current = !camera2.current
	currentCamera = camera2

func _on_ChangeCameraZone8_body_entered(_body:Node):
	camera4.current = !camera4.current
	currentCamera = camera4

func _on_ChangeCameraZone7_body_entered(_body:Node):
	camera2.current = !camera2.current
	currentCamera = camera2

func _on_ChangeCameraZone6_body_entered(_body:Node):
	camera3.current = !camera3.current
	currentCamera = camera3

func _on_ChangeCameraZone5_body_entered(_body:Node):
	camera1.current = !camera1.current
	currentCamera = camera1

func _on_ChangeCameraZone4_body_entered(_body:Node):
	camera4.current = !camera4.current
	currentCamera = camera4

func _on_ChangeCameraZone3_body_entered(_body:Node):
	camera3.current = !camera3.current
	currentCamera = camera3