#include <ros/ros.h>
#include <iomanip>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <amazon/Grasp.h>

using namespace std;

class manipulate
{
public:
  manipulate();
  void grasp(const amazon::Grasp& grasp_loc);
protected:
  ros::Subscriber graspSubscriber;
  ros::NodeHandle nh;
};

manipulate::manipulate()
{
  // nh.subscribe(topic_name,queue_size, pointer_to_callback_function);
  graspSubscriber = nh.subscribe("grasp_location",1000, &manipulate::grasp,this);
}

// callback function to manipulate
void manipulate::grasp(const amazon::Grasp& grasp_loc)
{
  int id = grasp_loc.object_id;
  float x = grasp_loc.grasp_point.x;
  float y = grasp_loc.grasp_point.y;
  float z = grasp_loc.grasp_point.z;
  // print out the location
  ROS_INFO("Object_id %d located at X: %f Y: %f  Z: %f", id,x,y,z);
}


// main program
int main(int argc, char** argv)
{
  // initializing ros
  ROS_INFO(" initializing manipulator node");
  ros::init(argc, argv, "manipulator_node");

  manipulate mp;
 
  ros::spin();
}
