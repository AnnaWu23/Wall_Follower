# TurtleBot3 Navigation Project

This is a navigation project based on the TurtleBot3 robot, developed using ROS2. The project implements autonomous navigation capabilities for the robot in a simulated environment.

## Project Structure

- `src/`: Source code directory
- `domain.pddl`: Planning domain file
- `map_house1.pgm` and `map_house1.yaml`: Map files
- Various shell scripts for launching and managing different functional modules

## System Requirements

- ROS2
- TurtleBot3

## Installation Instructions

1. Ensure ROS2 and TurtleBot3 are installed
2. Clone this repository locally
3. In the project root directory, run:
   ```bash
   colcon build
   ```

## Usage

To start the project, you need to open two terminal windows:

### Terminal 1: Launch TurtleBot3 and Map
```bash
./turtlebot3_startup.sh
```
This script will:
- Build the project
- Launch the TurtleBot3 simulator
- Load the house1 map
- Start Cartographer for SLAM

### Terminal 2: Launch Project Code
```bash
./starter_code.sh
```
This script will:
- Set up environment variables
- Launch the main project program
- Send the start command

## Additional Function Scripts

- `bot.sh`: Robot control script
- `map.sh`: Map-related operations
- `planner.sh`: Path planning script
- `zbar.sh`: QR code recognition functionality

## Important Notes

- Ensure ROS2 environment is properly set up before running scripts
- Verify all dependencies are correctly installed
- It is recommended to run the TurtleBot3 startup script before running the project code script

## Demo Video
[Demo Link](https://www.youtube.com/watch?v=HmwriGd0qZE&ab_channel=YanyunWu)
