GDPC                �                                                                         P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn`2      �      �OH1mr�1�\�t    T   res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn  p@      �      ޣ�7�Q��ǃo��H�    T   res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn  �      >      ��6ifY���5�g��3    T   res://.godot/exported/133200997/export-b8bf26edbee999f9750edc64c317f94f-bonus.scn   �      1      �ś�Gd�KT��wK,    T   res://.godot/exported/133200997/export-e8a827714e2a19bea0a56817e06c46eb-freeArea.scn�%      �      {�9��Bl'��1����    ,   res://.godot/global_script_class_cache.cfg  �G      �       ��`"cU�g�!�ˢ    H   res://.godot/imported/bonus.svg-93fc365b888dd93064ec023b6c8fcafa.ctex   P      �      �)4ї�h^G����r��    H   res://.godot/imported/bullet.svg-b6ec885f7d5c1fe442e96a9d6ec39bdc.ctex        �      �M���z̶�Gc        res://.godot/uid_cache.bin   H      �       4���x�ѶG�;��1       res://Effect.gd �      T       elLP�c~)ig�%q�g       res://bonus.gd          N      q,8@Q�#�|�Ǔ&�       res://bonus.svg.import         �       ���x����5��       res://bonus.tscn.remap  `E      b       )�ge�=���;ڔ�       res://bullet.gd 
      �      �>�YuEUϱ��p�&)       res://bullet.svg.import �      �       &׭��W�U�7��wD       res://bullet.tscn.remap �E      c       �ڦQDc?�]�F��       res://freeArea.gd          r      Gx�5�_~�َ�gYq�       res://freeArea.tscn.remap   @F      e       �2�XSH���lLdrp       res://main.gd   �+      �      �|��m]�U��t�cd       res://main.tscn.remap   �F      a       �J�Sw� ������       res://player.gd �9      y      RL�`� ��ǂ$5|       res://player.tscn.remap  G      c       ������T�?�L���       res://project.binary�H      �      ]��W#ey�2h��V�g    �2�Y���extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_body_entered(body):
	if body.name == "Player":
		body.makeSixShot()
	queue_free()
X�GST2   L   L      ����               L L        t  RIFFl  WEBPVP8L_  /K���Fr�f�o�yLR"Y@�ڶMm��U�r��]�[PFna��ڶ��������H�*3<�A( @�v���&���֮JyP�fd⚭X���I�����K�K<���鑆	���z}�,6Ĵ@v�flze�%ҺY��O�wl�W�IG�[��&�h\v�9�8b����7���ğ��	GB������'4����#��M(�����<�p8�Slާye��������dR�<�����V��Y��&�!n�����߿4�A��O������� �qм�: �{X�D�N.�<U�(׎g��b�\M8�Ğ�M\���'�	��Į����L�E~#�qQ���OQ��\��*�Ht`m��,h�C-��B d.�pB �P?�KȰ�������|o`z�H��?I�F�ǣ�^�yf΀�i
!��Y������I6���rx��=,����� �<��r��;r<Yx�܂�����=�Ait6���{m��*�l�e�!�CZs�����y!���2wd���nj��s���u!VgY�F��V��:v�"t�k1aϵOB§k{&�(�K {  q�o�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://sfgdh1e3sric"
path="res://.godot/imported/bonus.svg-93fc365b888dd93064ec023b6c8fcafa.ctex"
metadata={
"vram_texture": false
}
 �����rnp�N�ӇRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    animations    script    custom_solver_bias    radius 	   _bundled       Script    res://bonus.gd ��������
   Texture2D    res://bonus.svg ���${�      local://SpriteFrames_68681 �         local://CircleShape2D_js3iw }         local://PackedScene_jgi8x �         SpriteFrames                         name ,      default       speed      �@      loop             frames                   texture             	   duration      �?         CircleShape2D          �B         PackedScene          	         names "         Bonus    collision_layer    collision_mask    script    Area2D    AnimatedSprite2D    sprite_frames    CollisionShape2D    shape    _on_body_entered    body_entered    	   variants                                                node_count             nodes        ��������       ����                                         ����                           ����                   conn_count             conns                
   	                    node_paths              editable_instances              version             RSRCӽ@:P��O���v8!�extends RigidBody2D

signal bulletHitBorder
@export var velocity = Vector2(2000.0, 0.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func shotAt(shotPosition, shotRotation):
	position = shotPosition
	rotation = shotRotation
	linear_velocity = velocity.rotated(rotation)

func onAreaTouch():
	bulletHitBorder.emit(position)
�<�ʹz��GST2   L   L      ����               L L        Z  RIFFR  WEBPVP8LE  /K���6���I߇��0 ��mǛ'�V���d	��-��[���vh�6F������U�c�G<X���nڡ;��۝C�ڥ�(`����_�u-�Y�ćw�ЅI�%ڎy��ȅqF�1�����Yt!�9�#'�ӫ��DY7m������ū���#Ջ�F7I�֘�˱�P�16��z���.��C�'R,�C#���c�◥�����C�<�4[$���F'�Q����E�}�W��^4ݟ��<e��,
��z�"Rg�����*�!������ �QL�4����2P`9��PPD���kO��t��s�ĵ�$>�$X��YWɺ���H�o7�?E,�0�G�rXДC�/ ��N� @>�4�0�P��C��g�70��8��Y+�=O4h�N�L�5�TAݳ��ۃ7[�l�=(e�2�}YX�M��E[�����;r��
�x�3T�2غ�@��6J�������VA�׋?XU�m�4:.�[)k�n�_`7q����ѯrFE���i�A��>'���؍#x�r��p�d��Vǎ�����\��|��gB��0 � o$��`p��I���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dknui6y2pmete"
path="res://.godot/imported/bullet.svg-b6ec885f7d5c1fe442e96a9d6ec39bdc.ctex"
metadata={
"vram_texture": false
}
 ^������4Ѵ�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script    animations 	   _bundled       Script    res://bullet.gd ��������
   Texture2D    res://bullet.svg �v��!|m      local://CircleShape2D_qhu0e �         local://SpriteFrames_67f6s �         local://PackedScene_dpdvs �         CircleShape2D          a2�A         SpriteFrames                         name ,      default       speed      �@      loop             frames                   texture             	   duration      �?         PackedScene          	         names "         Bullet    collision_layer    collision_mask    script    RigidBody2D    CollisionShape2D    shape    AnimatedSprite2D 	   position    scale    sprite_frames    	   variants                                        
    �    
   �J?��H?               node_count             nodes     #   ��������       ����                                        ����                           ����         	      
                conn_count              conns               node_paths              editable_instances              version             RSRC��extends Object
class_name Effect

var position
var impulse
var lifetime
var radius

��C����v/extends Node2D

var screen_size
var radius
var vertices
var verticesEffects: Array[Effect] = []
var slices
var collisionSlices
@export var verticesCount = 120
@export var effectLifetime = 1
@export var сollapseVelocity = 100
@export var maxEffectRadiusForCollision = 200.0
@export var toAvgRadiusPower = .05
@export var impulseModifier = .1
var averageRadius
var center

signal playerHitBorder


func _ready():
	screen_size = get_viewport_rect().size
	radius = (screen_size.x if screen_size.x < screen_size.y else screen_size.y) / 2
	averageRadius = radius
	position = screen_size /2
	center = screen_size / 2
	slices = [$PolygonSliece1, $PolygonSliece2, $PolygonSliece3, $PolygonSliece4]
	collisionSlices = [$Area2D/CollisionSliece1, $Area2D/CollisionSliece2, $Area2D/CollisionSliece3, $Area2D/CollisionSliece4]


func startGame():
	verticesEffects = []
	vertices = []
	for step in range(verticesCount):
		var verticePos = Vector2.from_angle(PI * 2 / verticesCount * step)
		verticePos *= radius
		vertices.push_back(verticePos)
	
	drawVertices(vertices, slices)
	drawVertices(vertices, collisionSlices)

func rand(v):
	return v * ((randi() % 10 - 5) / 1000.0 + 1)
	
func drawVertices(vertices: Array, slices: Array):
	var verticesInSlice = vertices.size()/slices.size()
	var polygonVertices = []
	for i in vertices.size() + 1:
		var vertice: Vector2
		if vertices.size() < i:
			vertice = vertices[i]
		else:
			vertice = vertices[i-1]
		if i % verticesInSlice == 0:
			if polygonVertices.size() > 0:
				#Если это последний слайс то
				polygonVertices.push_back(Vector2(vertice))
				polygonVertices.push_back(vertice.normalized() * radius * 4) # последняя точка в слайсе
				slices[i / verticesInSlice - 1].set_polygon(PackedVector2Array(polygonVertices))
				polygonVertices = []
				polygonVertices.push_back(vertice.normalized() * radius * 4) # первая точка в слайсе
			else:
				polygonVertices.push_back(vertice.normalized() * radius * 4) # первая точка в слайсе
		
		polygonVertices.push_back(Vector2(vertice))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	averageRadius = calcuclateAverageRaidius()
	vertices = vertices.map(func(v): return updateVertice(v, delta))
	
	var randVertices = vertices.map(rand)	
	drawVertices(randVertices, slices)
	drawVertices(vertices, collisionSlices)
	updateEffectsLifetime(delta)	
	

func calcuclateAverageRaidius():
	var allLengths = vertices.reduce(func(accum, v): return accum + v.length(), 0)
	return allLengths / vertices.size()
	

func updateEffectsLifetime(delta):
	var newEffects: Array[Effect] = []
	for effect in verticesEffects:
		effect.lifetime -= delta
		if effect.lifetime > 0:
			newEffects.push_back(effect)
	verticesEffects = newEffects


func updateVertice(v, delta):
	var vectorBetweenAbgRadiusPosition = v.normalized() * averageRadius - v
	
	var deltaPosition = vectorBetweenAbgRadiusPosition * delta
	var newVerticePosition = v + deltaPosition
	newVerticePosition = applyEffects(newVerticePosition, delta)
	return newVerticePosition

func applyEffects(vertice, delta):
	for effect in verticesEffects:
		var effectRadius = effect.radius * (effect.lifetime / effectLifetime)
		var distanceBeetwen = (effect.position - vertice).length()
		vertice += (effect.impulse / (distanceBeetwen/effectRadius)) * vertice.normalized() * delta
	return vertice

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		playerHitBorder.emit()
	else:
		onBulletHitBorder(body)


func onBulletHitBorder(body):
	var effect = Effect.new()
	effect.position = body.position - screen_size/2
	effect.impulse = body.velocity.length() * impulseModifier
	effect.lifetime = effectLifetime
	effect.radius = maxEffectRadiusForCollision
	verticesEffects.push_back(effect)
	body.queue_free()
	


func _on_effect_spawner_timeout():
	var effect = Effect.new()
	effect.position = Vector2(averageRadius, averageRadius).rotated(PI * 2 * (randi() % 100 + 1)/ 100)
	effect.impulse = -200 * (averageRadius / radius)
	effect.lifetime = effectLifetime
	effect.radius = maxEffectRadiusForCollision
	verticesEffects.push_back(effect)
	
�s4��wB'΄��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://freeArea.gd ��������      local://PackedScene_igc2v 	         PackedScene          	         names "      	   FreeArea    script    metadata/_edit_lock_    Node2D    PolygonSliece1    color 
   Polygon2D    Area2D    collision_layer    collision_mask    CollisionSliece1    CollisionPolygon2D    CollisionSliece2    CollisionSliece3    CollisionSliece4    PolygonSliece2    PolygonSliece3    PolygonSliece4    EffectSpawner 
   wait_time 
   autostart    Timer    _on_area_2d_body_entered    body_entered    _on_effect_spawner_timeout    timeout    	   variants                                        �?      )   �������?      node_count             nodes     a   ��������       ����                                  ����                           ����         	                    
   ����                     ����                     ����                     ����                      ����                           ����                           ����                           ����                         conn_count             conns                                
                              node_paths              editable_instances              version             RSRC�����2��m*.� extends Node
@export var bulletScene: PackedScene
@export var bonusScene: PackedScene
@export var colors: Array[Color]
# Called when the node enters the scene tree for the first time.
func _ready():
	$FreeArea.startGame()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Player.is_shot_available():
		makeShot($Player.position, $Player.rotation)
		$Player.shotsFired()
	
func makeShot(pos, rot):
	var bullet = bulletScene.instantiate()
	bullet.shotAt(pos, rot)
	add_child(bullet)

func _physics_process(delta):
	$Player.updateReloadTime(delta, $FreeArea.averageRadius, $FreeArea.center)
	var vertices = $FreeArea.vertices.map(func(v): return v - v.normalized() * $Player.maxDistanceToRadiusToGainReload / 2)
	var alpha = $Player.waitReloadTime/ $Player.reloadTime
	if alpha < .25:
		alpha = .25
	$ZoneIndicator.set_color(Color($ZoneIndicator.color, alpha))
	
	$WithoutReloadZone.position = $FreeArea.center
	$WithoutReloadZone.set_polygon(PackedVector2Array(vertices))

func rand(v):
	return v * ((randi() % 10 - 5) / 1000.0 + 1)


func startGame():
	$FreeArea.startGame()
	$Player.startGame()
	$ZoneIndicator.set_color(colors[randi() % colors.size()])

func _on_free_area_player_hit_border():
	startGame()
	


func _on_create_bonus_timer_timeout():
	var bonus = bonusScene.instantiate()
	var radius = $FreeArea.averageRadius - $Player.maxDistanceToRadiusToGainReload 
	var v = rand_circle(radius)
	bonus.position = $FreeArea.center + v
	add_child(bonus)
	

func rand_circle(radius):
	return Vector2(radius * randf(), 0).rotated(randf() * 2 * PI)


func _on_player_make_6_shot():
	for i in range(6):
		makeShot($Player.position, $Player.rotation + (i * (PI/3/6) - PI/3/6/2))
�c��F�G��*RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://main.gd ��������   PackedScene    res://bullet.tscn 
����E:+   PackedScene    res://bonus.tscn ����tC(   PackedScene    res://freeArea.tscn !��m�P   PackedScene    res://player.tscn p���;�!      local://PackedScene_o7efj �         PackedScene          	         names "         main    script    bulletScene    bonusScene    colors    Node 	   FreeArea    WithoutReloadZone    z_index 
   Polygon2D    Player 	   position    ZoneIndicator    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    color 
   ColorRect    CreateBonusTimer 
   wait_time 
   autostart    Timer    Background     _on_free_area_player_hit_border    playerHitBorder    _on_player_make_6_shot 
   make6Shot    _on_create_bonus_timer_timeout    timeout    	   variants                                                ��>?      �?   ��?��?      �?           ��c?  �?   ��-?���>��5?  �?            ����         
     �D  HD   ����           �?             ��X?    ��0>     �@         ����      node_count             nodes     [   ��������       ����                                        ���                      	      ����                     ���
                                 ����            	      
      
                                       ����                                 ����            	      
      
                         conn_count             conns                                                                                      node_paths              editable_instances              version             RSRC:��Ud(")M�l�extends CharacterBody2D
var mousepositoion
@export var speed = 1000
var mouse_position = null
@export var reloadTime = .5
var waitReloadTime = 0
var availableShots = 0
var maxShots = 3
var shotProgress
@export var maxDistanceToRadiusToGainReload = 300

signal make6Shot
func _ready():
	var vertices = []
	for step in range(20):
		var verticePos = Vector2.from_angle(PI * 2 / 20 * step)
		verticePos *= 65
		vertices.push_back(verticePos)
	
	$PlayerPolygon.set_polygon(PackedVector2Array(vertices))
	startGame()

func updateReloadTime(delta, avgRadius, center):
		var len = abs((position - center).length() - avgRadius)
		if len < maxDistanceToRadiusToGainReload:
			waitReloadTime += delta * len / maxDistanceToRadiusToGainReload		
	
func _physics_process(delta):
	mouse_position = get_global_mouse_position()
	var deltaPosition = mouse_position - position;
	if deltaPosition.length() > 50:
		var direction = deltaPosition.normalized()
		velocity = (direction * speed)
	else:
		velocity = Vector2(0, 0)
	
	if waitReloadTime > reloadTime:
		availableShots += 1
		waitReloadTime = 0
		
		if availableShots > maxShots:
			availableShots = maxShots
	
	
	shotProgress = waitReloadTime / reloadTime
	
	var max_color = .5
	var color_value = max_color - (1 if shotProgress > 1 else shotProgress) * max_color
	$PlayerPolygon.set_color(Color(color_value, color_value, color_value))
	
	move_and_slide()
	look_at(mouse_position)

		
func is_shot_available():
	return availableShots > 0
	
func shotsFired():
	availableShots -= 1

func startGame():
	position = get_viewport_rect().size / 2
	waitReloadTime = 0
	availableShots = 0

func makeSixShot():
	make6Shot.emit()


��G��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://player.gd ��������      local://CircleShape2D_63p0h Q         local://PackedScene_yopux {         CircleShape2D          ��B         PackedScene          	         names "         Player    collision_layer    platform_wall_layers    script    CharacterBody2D    CollisionShape2D    shape    PlayerPolygon    color    polygon 
   Polygon2D    	   variants                                          ��?��?��?  �?%        ��      ��  ��  `�  �  4�  D�  �  h�  ��  |�  `�  ��  ��  ��  �A  ��  �A  t�  B  \�  DB  4�  lB   �  �B  ��  �B  ��  �B  �@  �B  �A  XB  $B  4B  DB   B  pB  �A  �B  �@  �B  ��  �B  ��  |B  �  lB  ,�  LB  \�  B  t�  �A  ��  �A      node_count             nodes     !   ��������       ����                                        ����                     
      ����         	                conn_count              conns               node_paths              editable_instances              version             RSRC���[remap]

path="res://.godot/exported/133200997/export-b8bf26edbee999f9750edc64c317f94f-bonus.scn"
��<;�������m�[remap]

path="res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn"
p�#�Õ�"|[remap]

path="res://.godot/exported/133200997/export-e8a827714e2a19bea0a56817e06c46eb-freeArea.scn"
�0���N�[remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
\��~G����	���[remap]

path="res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn"
�H�U��.���пlist=Array[Dictionary]([{
"base": &"Object",
"class": &"Effect",
"icon": "",
"language": &"GDScript",
"path": "res://Effect.gd"
}])
���dZ�s��XK�   ���${�   res://bonus.svg����tC(   res://bonus.tscn�v��!|m   res://bullet.svg
����E:+   res://bullet.tscn!��m�P   res://freeArea.tscnj�^\iT=_   res://main.tscnp���;�!   res://player.tscn���ECFG
      application/config/name         limitedSpace   application/run/main_scene         res://main.tscn    application/config/features(   "         4.1    GL Compatibility    "   display/window/size/viewport_width       
  #   display/window/size/viewport_height      @     display/window/stretch/mode         canvas_items
   input/shott              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script      !   physics/2d/default_gravity_vector      �{,�{,#   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility����U����j