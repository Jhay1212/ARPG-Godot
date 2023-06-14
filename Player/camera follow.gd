extends Camera2D

@export var tilemap: TileMap

func _ready():
	var tile_rect = tilemap.get_used_rect()
	var map_size = tilemap.cell_quadrant_size
	var worl_map_rect = tile_rect.size * map_size
	limit_right = worl_map_rect.x
	limit_left = worl_map_rect.y
	
