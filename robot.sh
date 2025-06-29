#!/bin/bash

LOG_FILE="robot.log"
SENSOR_FILE="sensor.txt"

log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> $LOG_FILE
}

move_forward() {
    log_action "Robot moving forward."
}

turn_left() {
    log_action "Robot turning left."
}

turn_right() {
    log_action "Robot turning right."
}

stop() {
    log_action "Robot stopped."
}

check_sensor() {
    if grep -q "obstacle" $SENSOR_FILE; then
        log_action "Obstacle detected! Stopping robot."
        stop
    else
        log_action "Path clear."
    fi
}

# Menu
echo "Robot Shell Controller"
echo "1. Move Forward"
echo "2. Turn Left"
echo "3. Turn Right"
echo "4. Stop"
echo "5. Check Sensor"
echo "6. Help"
read -p "Choose an action [1-6]: " choice

case $choice in
    1) move_forward ;;
    2) turn_left ;;
    3) turn_right ;;
    4) stop ;;
    5) check_sensor ;;
    6) Help;;
    *) echo "Invalid option" ;;
esac
