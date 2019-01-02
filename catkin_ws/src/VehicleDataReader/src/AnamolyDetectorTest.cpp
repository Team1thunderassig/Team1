#include <gtest/gtest.h>
#include "SampleAnalyzer/SampleAnalyzer.h"
#include "VehicleDataReader/CANMessage.h"
#include <vector>

int sample_sz = 3;
std::vector CreateThreeAnamoliesHelper()
{
   std::vector<VehicleDataReader::CANMessage> inputTestData;

   inputTestData.push_back(VehicleDataReader::CANMessage(0xfb, 0, 0, 0, 0, 0, 0, 1.1));
   inputTestData.push_back(VehicleDataReader::CANMessage(0xea, 1, 1, 1, 0, 0, 1, 1.2));
   inputTestData.push_back(VehicleDataReader::CANMessage(0xea, 2, 3, 1, 0, 0, 1, 1.3));
   inputTestData.push_back(VehicleDataReader::CANMessage(0xea, 3, 5, 0, 0, 0, 1, 1.4));
   inputTestData.push_back(VehicleDataReader::CANMessage(0xfb, 4, 6, 0, 0, 0, 1, 1.5));
   return inputTestData;
}
  
std::vector CreateFiveAnamoliesHelper()
{
   std::vector<VehicleDataReader::CANMessage> inputTestData = CreateThreeAnamoliesHelper();

   inputTestData.push_back(VehicleDataReader::CANMessage(0xfb, 6, 8, 1, 0, 0, 1, 12.7));
   inputTestData.push_back(VehicleDataReader::CANMessage(0xea, 7, 8, 1, 0, 0, 1, 13.3));
  
   return inputTestData;
} 
   
class AnamolyDetectorTest : public ::testing::Test {

  public:
    
  AnamolyDetectorTest()
  : sampleAnalyzer(canparser_pub, sample_sz)
  {
    ros::NodeHandle n;
    canparser_pub = n.advertise<VehicleDataReader::CANMessage>("canparserMessage", 1000);
  	ros::Subscriber sub = n.subscribe("canparserMessage", 1000, &assignment::SampleAnalyzer<VehicleDataReader::CANMessage>::anamolyHandlerCallback, &sampleAnalyzer);
  }

  public:
	ros::Publisher canparser_pub;
    assignment::SampleAnalyzer<VehicleDataReader::CANMessage> sampleAnalyzer;
};

TEST_F(AnamolyDetectorTest, InitTest)
{
	EXPECT_EQ(0, sampleAnalyzer.AnamolyCount());
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    ros::init(argc, argv, "test_talker");
    ros::NodeHandle nh;
    return RUN_ALL_TESTS();
}
    

