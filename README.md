# 🤖 Robot Shell Controller

A simple bash-based shell controller that simulates robot movement and obstacle detection using log files and sensor data.

## 📂 Project Structure

- `robot.sh` – The main script to control robot actions.
- `sensor.txt` – Simulates sensor input (e.g., `clear` or `obstacle`).
- `robot.log` – Logs all robot actions with timestamps.

## 🛠️ Features

- Move Forward
- Turn Left
- Turn Right
- Stop
- Check for obstacles based on `sensor.txt`
- Logs all actions with timestamps

## 📦 How to Run

```bash
chmod +x robot.sh
./robot.sh


## 🧪 Sample Output (💻 Terminal)

============================
🚀 Robot Shell Controller
1️⃣ Move Forward
2️⃣ Turn Left
3️⃣ Turn Right
4️⃣ Stop
5️⃣ Check Sensor

📝 Choose an action [1–5]: 1
📌 2025-06-29 17:45:10 - Robot moving forward.

📝 Choose an action [1–5]: 5
📌 2025-06-29 17:45:22 - Path clear.

