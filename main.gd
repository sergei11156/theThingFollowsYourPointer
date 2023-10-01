extends Node
@export var bulletScene: PackedScene
@export var bonusScene: PackedScene
@export var ammoScene: PackedScene

@export var colors: Array[Color]

var colorAlphaVelocity = 0
var colorAlpha = .25

var bonuses = []
# Called when the node enters the scene tree for the first time.
func _ready():
	$FreeArea.startGame()
	startGame()
	
func makeShot(pos, rot):
	var bullet = bulletScene.instantiate()
	bullet.shotAt(pos, rot)
	add_child(bullet)

func _physics_process(delta):
	$Player.updateReloadTime(delta, $FreeArea.averageRadius, $FreeArea.center)
	var vertices = $FreeArea.vertices.map(func(v): return v - v.normalized() * $Player.maxDistanceToRadiusToGainReload / 2)
	var processReload = $Player.waitReloadTime / $Player.reloadTime
	colorAlphaVelocity = processReload - colorAlpha
	colorAlpha += colorAlphaVelocity * delta
	if colorAlpha < .25:
		colorAlpha = .25
	$ZoneIndicator.set_color(Color($ZoneIndicator.color, colorAlpha))
	
	$WithoutReloadZone.position = $FreeArea.center
	$WithoutReloadZone.set_polygon(PackedVector2Array(vertices))

func rand(v):
	return v * ((randi() % 10 - 5) / 1000.0 + 1)


func startGame():
	$FreeArea.startGame()
	$Player.startGame()
	$ZoneIndicator.set_color(colors[randi() % colors.size()])
	colorAlpha = .25
	$CreateBonusTimer.start()
	$CreateAmmunition.start()
	for bonuse in bonuses:
		if bonuse != null:
			bonuse.queue_free()
	bonuses = []
	

func _on_free_area_player_hit_border():
	startGame()
	


func _on_create_bonus_timer_timeout():
	var bonus = bonusScene.instantiate()
	var radius = $FreeArea.averageRadius - $Player.maxDistanceToRadiusToGainReload 
	var v = rand_circle(radius, $FreeArea.averageRadius - $Player.maxDistanceToRadiusToGainReload)
	bonus.position = $FreeArea.center + v
	add_child(bonus)
	bonuses.push_back(bonus)
	

func rand_circle(radius, from := 0):
	return Vector2(randf_range(from, radius), 0).rotated(randf() * 2 * PI)


func _on_player_make_6_shot():
	for i in range(6):
		makeShot($Player.position, $Player.rotation + (i * (PI/3/6) - PI/3/6/2))


func _on_create_ammunition_timeout():
	var ammo = ammoScene.instantiate()
	var radius = $FreeArea.averageRadius 	
	var v = rand_circle(radius, $FreeArea.averageRadius - $Player.maxDistanceToRadiusToGainReload * 2)
	ammo.position = $FreeArea.center + v
	add_child(ammo)
	bonuses.push_back(ammo)


func _on_player_make_shot():
	makeShot($Player.position, $Player.rotation)
	$Player.shotsFired()
