#! /bin/sh
rosrun rosbag record /xsens_publisher_node/data/xs_accel /xsens_publisher_node/data/xs_angular_vel /xsens_publisher_node/data/xs_baro /xsens_publisher_node/data/xs_dq /xsens_publisher_node/data/xs_dv /xsens_publisher_node/data/xs_free_accel /xsens_publisher_node/data/xs_gnss /xsens_publisher_node/data/xs_magnetometer /xsens_publisher_node/data/xs_sampletime /xsens_publisher_node/data/xs_status /xsens_publisher_node/filter/xs_latlongalt /xsens_publisher_node/filter/xs_quaternion /xsens_publisher_node/filter/xs_velocity    /mavros/distance_sensor/sonar_1_sub     /mavros/imu/data_raw    /mavros/imu/mag         /mavros/local_position/pose     /mavros/local_position/velocity         /mavros/rc/in   /mavros/rc/out & 

sleep 2 ;

roslaunch xsens_reader xsens_publisher.launch;
sleep 2 ;
roslaunch xsens_reader xsens_recorder.launch; 

