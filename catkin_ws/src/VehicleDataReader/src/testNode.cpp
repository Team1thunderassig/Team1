#include "ros/ros.h"
#include "std_msgs/String.h"
#include "VehicleDataReader/CANMessage.h"
#include <cstdlib>
#include <ctime>
//#include <cmax>
 
class TestNodeInjector
{
    private :
	
	VehicleDataReader::CANMessage msg;
	TestNodeInjector():msg(){};
	TestNodeInjector(const TestNodeInjector& obj);
	TestNodeInjector operator=(const TestNodeInjector& obj);
	static  TestNodeInjector *TestNodeInjectorobj;

    public:
        ros::Publisher chatter_pub;
        void setpublisher(ros::Publisher chatter_pub)
        {
	   this->chatter_pub = chatter_pub;
        }
	static TestNodeInjector* getinstance()
	{
	   TestNodeInjectorobj= new TestNodeInjector();
	   return TestNodeInjectorobj;
	}
	void randomcanmsg()
	{  
            std::srand(std::time(nullptr)); // use current time as seed for random generator
	    for(int i = 1; i< 10; i++)
            {   

		    clock_t time_req;
		    time_req = clock();
		    msg.messageId = (randomisebtw<int>(2) < 1) ? 234 : 251;//toggling needed
		    msg.vehicleSpeed = randomisebtw<float>(1000.0);
		    msg.engineSpeed = randomisebtw<float>(1000.0);
		    msg.driverdoor_open = randomisebtw(2)<1 ? 0:1;
		    msg.frontPassengerDoor_open = randomisebtw(2)<1 ? 0:1;
		    msg.rearLeftDoor_open = randomisebtw(2)<1 ? 0:1;
		    msg.rearRightDoor_open = randomisebtw(2)<1 ? 0:1;
		    msg.FrameTickCountSysReadTime.fromSec(static_cast<double>(time_req));
		    rospublizing();
             }
	}
	template<typename T>
	T randomisebtw(T maxvalue)
	{          
	    T x;	
	    x =  std::rand()/((RAND_MAX + 1u)/maxvalue);  // Note: 1+rand()%6 is biased
	    return x;
	}
        void rospublizing()
	{
            ros::Rate loop_rate(10);
            std::cout<< "Sent:\n"<< msg;
            chatter_pub.publish(msg);
	    ros::spinOnce();
	    loop_rate.sleep();
        }
    
};

TestNodeInjector* TestNodeInjector::TestNodeInjectorobj = nullptr;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listenertestx");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<VehicleDataReader::CANMessage>("canparserMessage", 1000);
  TestNodeInjector *TestNodeInjectorobj = TestNodeInjector::getinstance();
  TestNodeInjectorobj->setpublisher(chatter_pub);
  TestNodeInjectorobj->randomcanmsg();
  ros::spin();
  return 0;
}
