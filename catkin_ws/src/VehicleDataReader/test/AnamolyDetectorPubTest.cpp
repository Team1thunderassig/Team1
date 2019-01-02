#include "SampleAnalyzer.h"
#include "VehicleDataReader/CANMessage.h"
#include <vector>
#include <gtest/gtest.h>
#include "ros/ros.h"

static int sample_sz = 3;
VehicleDataReader::CANMessage CreateCanMessage(int id, double vehicleSpeed, double engineSpeed, int driverdoorOpen, int frontPassengerDoorOpen, int rearLeftDoorOpen, int rearRightDoorOpen, double timeStamp)
{
	VehicleDataReader::CANMessage message;
	message.messageId = id;
	message.vehicleSpeed = vehicleSpeed;  
	message.engineSpeed = engineSpeed;
	message.driverdoor_open = driverdoorOpen;
	message.frontPassengerDoor_open  = frontPassengerDoorOpen;
	message.rearLeftDoor_open = rearLeftDoorOpen;
	message.rearRightDoor_open = rearRightDoorOpen;
	message.FrameTickCountSysReadTime.fromSec(timeStamp);
		    
	return message;		
}

std::vector<VehicleDataReader::CANMessage> CreateThreeAnamoliesHelper()
{
   std::vector<VehicleDataReader::CANMessage> inputTestData;

   inputTestData.push_back(CreateCanMessage(251, 0, 0, 0, 0, 0, 0, 1.1));
   inputTestData.push_back(CreateCanMessage(248, 1.13, 1.81, 1, 0, 0, 1, 1.2));
   inputTestData.push_back(CreateCanMessage(248, 2.52, 3.53, 1, 0, 0, 1, 1.3));
   inputTestData.push_back(CreateCanMessage(248, 3.19, 5.98, 0, 0, 0, 1, 1.4));
   inputTestData.push_back(CreateCanMessage(251, 4.93, 6.34, 0, 0, 0, 1, 1.5));
   return inputTestData;
}
  
std::vector<VehicleDataReader::CANMessage> CreateFiveAnamoliesHelper()
{
   std::vector<VehicleDataReader::CANMessage> inputTestData = CreateThreeAnamoliesHelper();

   inputTestData.push_back(CreateCanMessage(251, 6.56, 8.04, 1, 0, 0, 1, 12.7));
   inputTestData.push_back(CreateCanMessage(248, 7.78, 8.79, 1, 0, 0, 1, 13.3));
  
   return inputTestData;
} 

class Publisher
{
   public:
    ros::NodeHandle nh;
	ros::Publisher canparser_pub;

    Publisher()
	{
		canparser_pub = nh.advertise<VehicleDataReader::CANMessage>("canparserMessage", 1000);
	}

    ~Publisher(){}
    void PublishMessage()
	{
        while(ros::ok())
		{
			for (VehicleDataReader::CANMessage message : CreateThreeAnamoliesHelper())
  			{
				canparser_pub.publish(message);
				ros::spinOnce();
			}
		}		
	}

};

int main(int argc, char** argv) {
    //::testing::InitGoogleTest(&argc, argv);
    ros::init(argc, argv, "test_talker");
    Publisher pub;
    pub.PublishMessage();
    //ros::NodeHandle nh;
    return 0;
}
