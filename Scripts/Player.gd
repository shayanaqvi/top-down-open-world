extends KinematicBody2D

var playerMovementSnap = 1 #px

func _ready():
    playerMovementSnap = 1

func _process(_delta):
    if Input.is_action_pressed("move_up"):
        move_and_collide(Vector2(0, -playerMovementSnap))

    if Input.is_action_pressed("move_down"):
        move_and_collide(Vector2(0, playerMovementSnap))

    if Input.is_action_pressed("move_right"):
        move_and_collide(Vector2(playerMovementSnap, 0))

    if Input.is_action_pressed("move_left"):
        move_and_collide(Vector2(-playerMovementSnap, 0))
        
    if Input.is_action_pressed("shift"):
        playerMovementSnap = 0
    else:
        playerMovementSnap = 1