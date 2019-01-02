#include "ros/ros.h"
#include "std_msgs/String.h"

#include "VehicleDataReader/CANMessage.h"

template <typename T>
void chatterCallback(const T& msg)
{
  //ROS_INFO("I heard: [%s]", msg->data.c_str());
  std::cout << msg << std::endl;
}


int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "canlistener");

  
  ros::NodeHandle n;

  
  ros::Subscriber sub = n.subscribe("anamolyMessage", 1000, chatterCallback<VehicleDataReader::CANMessage>);

  ros::spin();

  return 0;
}


