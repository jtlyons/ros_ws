#include <ros/ros.h>
#include <iomanip>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <amazon/Object.h>

using namespace std;

int main(int argc, char** argv)
{  
  // initializing ros
  ROS_INFO(" initializing work_order node");
  ros::init(argc, argv, "work_order_node");
  ros::NodeHandle nh;
  // ros::Publisher pub = node_handle.advertise<message_type>(topic_name, queue_size);
  ros::Publisher order_pub = nh.advertise<amazon::Object>("item_order", 20);

  
   ros::Rate r(10.0);  // frequency
   while(nh.ok())
   {
   	 ros::Time order_time = ros::Time::now();
    //////////////////////////////////////////////
    // generating random work_order
    //populate the task_object message
     amazon::Object task_object;
     task_object.header.stamp = order_time;
     task_object.header.frame_id = "object";

     task_object.bin_id = rand() % 20;
     task_object.object_id = rand() % 100;
     
     order_pub.publish(task_object); // publish the message
     r.sleep();
   }
}
