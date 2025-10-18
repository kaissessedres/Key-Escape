# Key Escape
#### Video Demo: https://www.youtube.com/watch?v=MYBoafCknkw&ab_channel=Kaiss%C3%A9sSedr%C3%AAs
#### Description:

# Key Escape

## Summary

Key Escape is a 3D first-person survival horror game where the objective is to collect four keys scattered across a graveyard to unlock the padlock on the main gate and escape, all while avoiding zombies that patrol the area. The game was developed using the Godot 4.2 engine and is programmed in GDScript. None of the sprites or models used are my own creation; however, all codes (except for the main character's controls) were developed by me. The sprites and models were acquired either for free or purchased from itch.io and are licensed for use in projects like this.

## Gameplay

Key Escape is a first-person shooter with simple controls, utilizing WASD for movement, Shift to run, and the mouse to control the camera.

The game is divided into four main scenes: the initial menu, the graveyard (where the gameplay actually takes place), and the victory or defeat screens, depending on the player's performance in achieving the main objective. The menu, victory, and defeat screens each have two buttons: one to start/retry and another to close the game. The menu also explains the commands and the main objective of the game.

Upon starting (or retrying), the player is transported to the graveyard, facing the locked entrance gate secured with a large padlock. The graveyard is square-shaped, with a cross-shaped path dividing the territory into four sectors, each containing a key placed on one of the tombstones in that sector. There are 48 tombstones lined up in each sector.

Six zombies patrol the graveyard territory. They cause damage to the player upon contact. Zombies can detect the player and chase them if they come within a certain distance. If not detecting the player, zombies will continue patrolling their designated points. If the zombies inflict enough damage on the player, they lose the game and are transported to the defeat screen.

Upon collecting all the keys, the player receives a message indicating that all the zombies are now pursuing them, suggesting they escape from the graveyard through the main gate. If the player manages to avoid the zombies and reach the main gate, they win and are taken to the victory screen.

The game consists essentially of these elements. Below, I describe the capabilities and details of each of the game's entities.

### The Menu, Victory, and Defeat Screens:

These screens are similar, consisting only of information about the screen (game name and commands in the case of the menu, victory or defeat message in the other two screens) and two buttons: the first always leads to the cemetery scene, and the second closes the program.

### The Graveyard:

The map consists of a territory enclosed by high-grade objects and the main gate (to delineate the protagonist's gameplay area). Outside this area, the fences are surrounded by tall trees and ground terrain, with a path leading from the main gate to give the impression of an extended map for the player. Within the cemetery territory, we have the cross-shaped path that divides the four sectors and 192 tombstones, of which only four have keys on them. The map features the keys, the padlock on the main gate, the six zombies, and the protagonist.

### The Protagonist:

The protagonist is the player's tool; as an FPS, the player controls the protagonist's body, the camera with the mouse, and movement with the WASD keys. The player can also press the Shift key while moving to speed up their movement (run). The protagonist's control was adopted from a GitHub repository of modular FPS controls. The protagonist has ten life points, which are reduced upon contact with zombies. They also collect keys and keep count of how many have been collected so far. They activate the zombies when entering their field of vision. The player also emits sounds while walking, being hit by zombies, or collecting keys.

### The Zombies:

The zombies have simple AI; their goal is to chase the player if they enter the defined field of vision. Each of them patrols between two points defined on the map. Upon contacting the player, they reduce the player's life points by one. If they continue in contact and the player's life points reach zero, the player loses the game (and is transported to the defeat screen). Upon collecting all the keys, the zombies' field of vision expands to encompass the entire map territory and chase the player (to create the final climax). If they lose sight of the player (with the player running out of their field of vision), the zombies return to patrolling their defined points. Zombies emit sounds while patrolling and also when detecting the player.

### The Keys and the Padlock:

The keys are positioned so that there is one in each of the four sectors of the graveyard. They are collected upon contact with the player (the object is destroyed, and the player's key count increases by one). Upon collecting all the keys, the padlock located on the main gate becomes "unlocked". If the player manages to make contact with the padlock's collision area, they win the game and are transported to the victory screen.

## Conclusion

Developing this game allowed me to practice a lot of programming logic, search for and solve programming challenges, use GitHub, share files publicly (itch.io), and it is my final project for CS50. This is Key Escape.
