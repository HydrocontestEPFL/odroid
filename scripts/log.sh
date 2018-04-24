rosrun rosbag record 	/mavros/distance_sensor/sonar_1_sub 	/mavros/imu/data_raw 	/mavros/imu/mag 	/mavros/local_position/pose 	/mavros/local_position/velocity 	/mavros/rc/in 	/mavros/rc/out &

sleep 2 ;

#rosrun rosbag record /mti/sensor/sample /mti/filter/position /mti/filter/orientation /mti/filter/velocity ;

