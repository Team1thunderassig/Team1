#include "ros/ros.h"
#include "SampleAnalyzer/SampleAnalyzer.h"
#include "VehicleDataReader/CANMessage.h"
#include <sstream>
#include <fstream>
#include <algorithm>
#include <deque>


int main(int argc, char **argv)
{
  ros::init(argc, argv, "anamoly_detector");
  std::cout << "Arg count:" << argc << std::endl;
  if(argc < 2)
  {
	std::cout << "Kindly supply sample size" << std::endl;
    return 0;
  }
  int samples = atoi(argv[1]);
  std::cout << "Arg value:" << samples << " and str " << argv[0]<< std::endl;
  ros::NodeHandle n;
  ros::Rate loop_rate(1);
  ros::Publisher canparser_pub = n.advertise<VehicleDataReader::CANMessage>("anamolyMessage", 1000);
  assignment::SampleAnalyzer<VehicleDataReader::CANMessage> sampleAnalyzer(canparser_pub, samples);
  ros::Subscriber sub = n.subscribe("canparserMessage", 1000, &assignment::SampleAnalyzer<VehicleDataReader::CANMessage>::anamolyHandlerCallback, &sampleAnalyzer);
  ros::spin();
  return 0;
}

