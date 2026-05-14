extends Node3D

var burgers = 0

func _ready():

	for burger in get_tree().get_nodes_in_group("burger"):
		burger.collected.connect(_on_burger_collected)

	update_ui()

func _on_burger_collected():
	burgers += 1
	update_ui()

	if burgers >= 5:
		win_game()

func update_ui():
	$CanvasLayer/ScoreLabel.text = "Burgers: " + str(burgers) + "/5"

func win_game():
	$CanvasLayer/ScoreLabel.text = "YOU WIN!"
