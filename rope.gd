extends Line2D

@onready var floor_sprite = get_node("/root/Main/Floor")
@onready var player = get_node("/root/Main/Player")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_point(floor_sprite.position)
	add_point(player.position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	set_point_position(0, floor_sprite.position)
	set_point_position(1, player.position)
	pass
