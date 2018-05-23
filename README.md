# Scripts and tools for running on the odroid of the bifoiler

## Connect to odroid

1. Power on the boat - all services will start up automatically (takes ~30 sec);
2. Choose "bifoiler" WiFi connection on your computer and login: ssid: bifoiler, pwd: bifoiler;
3. Access the main computer through ssh, in command line type: `ssh odroid@192.168.1.1` -> yes -> pwd: odroid -> profit (on Windows use 'Putty')
4. Work with your files, logs and so on
5. Type "exit" to logout.

## Launch logging

Note: use screen to keep the sessions active even on ssh disconnect.

```bash
screen -S boat
roslaunch boat.launch
# type C-a C-d to detach from session

screen -S log
sh log2.sh
# again detach with C-a C-d

# you can disconnect now...

# ... to resume a session
screen -r log
# list active sessions
screen -ls
```

## Convert rosbag to CSV

The logging script stores the data in a rosbag file with name of time and date of creation such as `2018-04-25-13-10-52.bag`.
To convert the rosbag to CSV file run on the odroid:

```bash
python rosbag_parser.py LOGFILE.bag
```

If you don't have a working ROS installation it migth be easier using Docker:
In the directory containing the `rosbag_parser.py` and the `.bag` file run:
```bash
docker run --rm -v $(pwd):/home/ ros:kinetic bash -c 'cd home && python rosbag_parser.py LOGFILE.bag'
```

