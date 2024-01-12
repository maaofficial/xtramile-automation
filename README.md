### Xtramile Automation Test
This repository contains scripts to execute UI Automation in website [https://computer-database.gatling.io/computers](https://computer-database.gatling.io/computers) and [https://the-internet.herokuapp.com/javascript_alerts](https://the-internet.herokuapp.com/javascript_alerts). This Automation using Robot Framework with Selenium Library and all code is written in Python.

### Overview
There are 9 Testcase for UI Automation Test in website [https://computer-database.gatling.io/computers](https://computer-database.gatling.io/computers) and 3 Testcase for UI Automation Test in website [https://the-internet.herokuapp.com/javascript_alerts](https://the-internet.herokuapp.com/javascript_alerts).

### Dependencies
- Python
- Robot Framework
- Selenium Library

### How to Installation and Run
1. Clone the repo
   ```sh
   git clone https://github.com/maaofficial/xtramile-automation.git
   ```
2. go to project directory
3. Install Dependencies
   ```sh
   pip install robotframework
   pip pip install --upgrade robotframework-seleniumlibrary
   ```
4. To run this Automation Test write this command below in terminal
   ```sh
   robot computer_database.robot
   robot javascript_alerts.robot
   ```
