extends Node

class_name TestScript

# Test GDScript file for LSP and syntax highlighting
var health: int = 100
var player_name: String = "Player"

signal health_changed(new_health: int)

func _ready():
    print("Node is ready!")
    connect("health_changed", self, "_on_health_changed")

func take_damage(damage: int) -> void:
    health -= damage
    emit_signal("health_changed", health)
    
    if health <= 0:
        die()

func _on_health_changed(new_health: int):
    print("Health changed to: ", new_health)

func die() -> void:
    print("Player died!")
    queue_free()