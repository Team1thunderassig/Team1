#include "ros/ros.h"
#include "std_msgs/String.h"
#include "VehicleDataReader/CANMessage.h"
#include <sstream>
#include <fstream>
#include <algorithm>
#include <boost/algorithm/string.hpp>
#include <time.h>

std::vector<VehicleDataReader::CANMessage> ReadInput(const char* inputFile)
{
	std::ifstream file(inputFile);
 
	std::vector<VehicleDataReader::CANMessage> dataList;
 	enum data{ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT};
	std::string line = "";
	if (file.is_open()) 
	{
		while (getline(file, line))
		{
			std::vector<std::string> vec;
			boost::algorithm::split(vec, line, boost::is_any_of(","));
			VehicleDataReader::CANMessage message;
			std::stringstream msgId(vec[ONE]);
		    msgId << std::hex;
			msgId >> message.messageId;
		    std::stringstream vehicleSpeed(vec[TWO]);
			vehicleSpeed >> message.vehicleSpeed;  
		    std::stringstream engineSpeed(vec[THREE]);
			engineSpeed >> message.engineSpeed;
			message.driverdoor_open = std::stoi (vec[FOUR]);
			message.frontPassengerDoor_open  = std::stoi (vec[FIVE]);
			message.rearLeftDoor_open = std::stoi (vec[SIX]);
			message.rearRightDoor_open = std::stoi (vec[SEVEN]);
			message.FrameTickCountSysReadTime.fromSec(std::stof(vec[EIGHT]));
		    
			dataList.push_back(message);
		}
    }

	file.close();
	return dataList;
}


int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "CANParser");

  ros::NodeHandle n;
  enum VehicleDataFormat {ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT};
  ros::Publisher canparser_pub = n.advertise<VehicleDataReader::CANMessage>("canparserMessage", 1000);

  ros::Rate loop_rate(1);

  int count = 0;
  std::vector<VehicleDataReader::CANMessage> dataList = ReadInput("20180101_1555_22006_ECM_HSC1_FrP00_sync.csv");
  loop_rate.sleep();
  for (VehicleDataReader::CANMessage message : dataList)
  {
    std::cout << "Message: " << message.FrameTickCountSysReadTime << std::endl;
    std::cout << ++count << std::endl;
    canparser_pub.publish(message);
    ros::spinOnce();
    //loop_rate.sleep();
  }

  ros::spin();

  return 0;
}

