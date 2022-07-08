extends KinematicBody2D

var playerMovementSnap = 8 #px

func _process(_delta):
    if Input.is_action_just_pressed("move_up"):
        move_and_collide(Vector2(0, -playerMovementSnap))
    if Input.is_action_just_pressed("move_down"):
        move_and_collide(Vector2(0, playerMovementSnap))
    if Input.is_action_just_pressed("move_right"):
        move_and_collide(Vector2(playerMovementSnap, 0))
    if Input.is_action_just_pressed("move_left"):
        move_and_collide(Vector2(-playerMovementSnap, 0))
        