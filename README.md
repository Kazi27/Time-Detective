# Time Detective
**Creators:**
- Drew Bruck ([drewtbruck@gmail.com](mailto:drewtbruck@gmail.com)) - Italy 1514 Scene
- Kazi Anwar ([kazisameen2702@gmail.com](mailto:kazisameen2702@gmail.com)) - Museum 2030 Scene
- Lubna Asha ([lubna.asha.1125@gmail.com](mailto:lubna.asha.1125@gmail.com)) - New York 2039 Scene
- Fahid Rahman ([rahmanfahid046@gmail.com](mailto:rahmanfahid046@gmail.com)) - Egypt 1776 Scene

---

## Table of Contents
1. [Introduction](#introduction)
2. [Scenes](#scenes)
   - [Museum 2030](#museum-2030)
   - [Egypt 1776](#egypt-1776)
   - [Italy 1514](#italy-1514)
   - [New York 2039](#new-york-2039)
3. [Animations](#animations)
   - [Animated Characters](#animated-characters)
   - [Animated Game Objects](#animated-game-objects)
4. [Scripts](#scripts)
   - [Scene Transitions](#scene-transitions)
   - [Museum 2030](#museum-2030-scripts)
   - [Egypt 1776](#egypt-1776-scripts)
   - [Italy 1514](#italy-1514-scripts)
   - [New York 2039](#new-york-2039-scripts)
5. [Testing and Debugging](#testing-and-debugging)
6. [Conclusion and trying out the game for yourself](#conclusion-and-trying-out-the-game-for-yourself)

---

## Introduction

This repository hosts a captivating Virtual Reality (VR) game that leverages the immersive capabilities of VR technology. In this game, players take on the role of a detective, embarking on a thrilling time-traveling pursuit to recover a stolen masterpiece. The game unfolds across various historical eras, each meticulously crafted to transport players to vivid settings. From a museum in 2030 to an Egyptian dungeon in 1776, the journey culminates in a New York penthouse in 2039.

## Scenes

### Museum 2030

- The game begins in a museum where players receive a challenging mission to track down a stolen painting.
- Players navigate through museum exhibits, solving puzzles and unraveling riddles to progress.
- Interactive elements, animated characters, and realistic museum sounds are employed to enhance the immersive experience.

### Egypt 1776

- Set in an Egyptian dungeon in 1776, players decipher hieroglyphics to progress through the game.
- The scene features puzzles, animated characters, and ambient Egyptian music for an authentic experience.
- Interactive objects, such as cat statues, contribute to the player's exploration and engagement.

### Italy 1514

- Players find themselves in Leonardo da Vinci's workshop in Milan, 1514.
- Wooden block puzzles and sketches lead players to the next destination.
- Sensory elements like floor squeaks and candlelight enhance the historical ambiance.

### New York 2039

- The final pursuit unfolds in a New York penthouse in 2039, featuring a light puzzle.
- Buttons control lights, unlock doors, and reveal hidden passages.
- Realistic animations and interactable objects heighten the sense of presence.


## Animations

### Animated Characters

#### Museum
- **Character:** Alex (Museum Guard)
  - Animations include leading players to the missing painting, a backflip, and relaxation on a bench.

#### Egypt
- **Character:** Mark (Animated Guide)
  - Animations include providing a synopsis and introducing hieroglyphics with translations.

#### Italy
- **Character:** Animated Foot Soldier (Da Vinci's Workshop)
  - Animations include walking, chatting, and idly watching surroundings.

#### New York
- **Character:** Helpful Assistant Robot
  - Animations include walking around the living room, performing household chores, and enhancing the scene's life.

### Animated Game Objects

#### Museum
- **Objects:** Clipboards and buttons are interactable, security cameras, rotating heads, announcements with distorted audio and animated spotlights make the museum scene more lively and immersive.

#### Egypt
- **Objects:** Ball, Sword, Canvas Buttons and tablet hieroglyphic solver are grabbable with the falcon Cube, hieroglyphic pillars, and lion sphere adding to the mystery of the scene.

#### Italy
- **Objects:** Animated Candles with flickering flames create a realistic candlelight effect, puzzle cubes are interactive, each hit on the anvil produces a new sound and each tool representing the workshop is interactable.

#### New York
- **Objects:** Entrance Doors and Fridge Door are controlled by scripts, and all the dishes, buttons, kitchen appliances, bedroom boxes, and random household items lying around on the floor are interactive

## Scripts

### Scene Transitions
- **Transition Effect:** Voronoi Map Animation - Provides a visually appealing transition effect between scenes.
- **Portal:** The TimeTravDev allows the user to input a string that when matches the correct string opens up a portal that teleports them to the next scene and when the wrong input is entered, a sound effect is played.

### Museum 2030 Scripts
- **Scripts:** HeadRotate, LightsOnOfOff - Manages animation of the head busts and toggling two different groups of spotlights based on switch state.

### Egypt 1776 Scripts
- **Scripts:** Falcon Cube Interaction, GrabandMoveSphere - Enables interaction with hieroglyphics and implements sphere grabbing and movement.

### Italy 1514 Scripts
- **Scripts:** Sound Randomizer, Puzzle Solution Checker - Creates realistic environment sounds and checks puzzle solutions for scene progression.

### New York 2039 Scripts
- **Scripts:** ToggleOnOff, OpeningDoors, FridgeDoor - Manages button toggling, entrance door animations, and triggers fridge door animation.

## Testing and Debugging

- **Challenges:** GitHub merge conflicts, Unity build errors, and device availability.
- **Solutions:** Regular communication, branching, and collaborative testing with available VR devices.
- **Enhancements:** Improved understanding of the Unity build process and more effective use of version control.

## Conclusion and trying out the game for yourself

**Time Detective** offers an immersive VR experience, seamlessly blending historical exploration with captivating puzzles. The collaborative effort of the development team has resulted in a rich and engaging game. With ongoing enhancements, the Time Detective project aims to push the boundaries of VR gaming, offering players an unforgettable journey through time. As the game is not published yet, to try out our game please clone the repository, open it in Unity and after connecting your VR headset, click run and build to be transported to the crime scene in Museum 2030, solving puzzles and making your way throughout the other scenes to retrieve the stolen painting by solving riddles and interactive puzzles. To watch a walkthrough or get answers to the puzzles please click on this link -> https://youtu.be/WnpXQelQGEQ?si=9xKdMFQfh_42TQvr
