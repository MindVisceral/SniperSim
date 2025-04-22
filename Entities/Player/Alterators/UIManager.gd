class_name UIManager
extends Node


###-------------------------------------------------------------------------###
##### Exported variables and References
###-------------------------------------------------------------------------###

## Reference to the Player, so its functions and variables can be accessed directly
var player: Player


@export_group("References")

## Reference to the "UI" Control Node. All UI elements are children of this Control Node.
@export var UI_reference: Control


###-------------------------------------------------------------------------###
##### Setup
###-------------------------------------------------------------------------###

## This function handles stuff that can be done before init() is called as to not clutter init()
func _ready() -> void:
	pass

## This Node needs a reference to the Player to access its functions and variables
func init(player: Player) -> void:
	self.player = player
	
	##
	update_health_UI()


###-------------------------------------------------------------------------###
##### Functions
###-------------------------------------------------------------------------###


## HERE: TEMPORARY - UI is not finalized
func update_health_UI() -> void:
	$"../../PlayerUI/UI/temp_healthUI".text = str(player.health)
