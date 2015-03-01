#include <ros/ros.h>
#include <iomanip>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <amazon/Object.h>
#include <amazon/Grasp.h>

using namespace std;


class PlanGraspLocation
{
public:
  PlanGraspLocation();
  void orderMessageReceived(const amazon::Object& object);
protected:
  ros::Subscriber orderSubscriber_;
  ros::Publisher graspPublisher_;
  ros::NodeHandle nh;
};

PlanGraspLocation::PlanGraspLocation()
{
  // nh.subscribe(topic_name,queue_size, pointer_to_callback_function);
  orderSubscriber_ = nh.subscribe("item_order",1000, &PlanGraspLocation::orderMessageReceived,this);
  graspPublisher_ = nh.advertise<amazon::Grasp>("grasp_location", 20);
}

// callback function to receive item_order data
void PlanGraspLocation::orderMessageReceived(const amazon::Object& object)
{
  // processing the item order recieved and computing the grasp location
  amazon::Grasp grasp_object;
  // populating the message
  grasp_object.object_id = object.object_id;
  grasp_object.grasp_point.x = rand() % 2000;
  grasp_object.grasp_point.y = rand() % 2000;
  grasp_object.grasp_point.z = rand() % 2000;
  // publish the message
  graspPublisher_.publish(grasp_object);

}


// main program
int main(int argc, char** argv)
{
  // initializing ros
  ROS_INFO(" initializing perceptor node");
  ros::init(argc, argv, "perceptor_node");

  PlanGraspLocation pgl;
 
  ros::spin();
}
