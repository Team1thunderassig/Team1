#include <gtest/gtest.h>
#include "SampleAnalyzer.h"
#include "VehicleDataReader/CANMessage.h"
#include <vector>
#include <algorithm>

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
   inputTestData.push_back(CreateCanMessage(248, 8.45, 8.98, 0, 0, 0, 1, 13.3));
  
   return inputTestData;
} 

class AnamolyDetectorTest : public ::testing::Test {

  public:   
  AnamolyDetectorTest()
  : canparser_pub(nh.advertise<VehicleDataReader::CANMessage>("anamolyMessage", 1000))
  , sampleAnalyzer(canparser_pub)
  , loop(1)
  {
  }

  public:
    ros::NodeHandle nh;
	ros::Publisher canparser_pub;
    assignment::SampleAnalyzer<VehicleDataReader::CANMessage> sampleAnalyzer;
    ros::Rate loop;
};

TEST_F(AnamolyDetectorTest, InitTest)
{
	EXPECT_EQ(0, sampleAnalyzer.AnamolyCount());
}

TEST_F(AnamolyDetectorTest, SampleSizeThreeTest)
{
    sampleAnalyzer.SetSamplesSize(3);
    for(VehicleDataReader::CANMessage message : CreateThreeAnamoliesHelper())
	{
		sampleAnalyzer.anamolyHandlerCallback(message);
	}
	EXPECT_EQ(1, sampleAnalyzer.AnamolyCount());
}

TEST_F(AnamolyDetectorTest, SampleSizeFiveTest)
{
	sampleAnalyzer.SetSamplesSize(5);
    for(VehicleDataReader::CANMessage message : CreateFiveAnamoliesHelper())
	{
		sampleAnalyzer.anamolyHandlerCallback(message);
	}
	EXPECT_EQ(1, sampleAnalyzer.AnamolyCount());
}

TEST_F(AnamolyDetectorTest, SampleSizeThreeTestRandomly)
{
	sampleAnalyzer.SetSamplesSize(3);
    std::vector<VehicleDataReader::CANMessage> messages = CreateThreeAnamoliesHelper();
	std::vector<VehicleDataReader::CANMessage> messagesB = CreateFiveAnamoliesHelper();
    messages.insert(std::end(messages), std::begin(messagesB), std::end(messagesB));
    for(VehicleDataReader::CANMessage message : messages)
	{
		sampleAnalyzer.anamolyHandlerCallback(message);
	}
	EXPECT_EQ(3, sampleAnalyzer.AnamolyCount());
}

TEST_F(AnamolyDetectorTest, SampleSizeFiveTestRandomly)
{
	sampleAnalyzer.SetSamplesSize(5);
    std::vector<VehicleDataReader::CANMessage> messages = CreateThreeAnamoliesHelper();
	std::vector<VehicleDataReader::CANMessage> messagesB = CreateFiveAnamoliesHelper();
    messages.insert(std::end(messages), std::begin(messagesB), std::end(messagesB));
    for(VehicleDataReader::CANMessage message : messages)
	{
		sampleAnalyzer.anamolyHandlerCallback(message);
	}
	EXPECT_EQ(1, sampleAnalyzer.AnamolyCount());
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    ros::init(argc, argv, "test_listener");
    //ros::NodeHandle nh;
    return RUN_ALL_TESTS();
}
    

