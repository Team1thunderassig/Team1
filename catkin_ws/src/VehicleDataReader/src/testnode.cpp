#include "gtest/gtest.h"
#include "ros/ros.h"
#include 

class TestCanParser
TEST(SubscribeStar, simpleSubFirstIntra)
{
  ros::NodeHandle nh;
  AnyHelper h;
  ros::Subscriber sub = nh.subscribe("test_star_intra", 0, &AnyHelper::cb, &h);
  ros::Publisher pub = nh.advertise<test_roscpp::TestEmpty>("test_star_intra", 0);

  EXPECT_EQ(pub.getNumSubscribers(), 1U);
  EXPECT_EQ(sub.getNumPublishers(), 1U);

  AnyMessagePtr msg(new AnyMessage);
  pub.publish(msg);
  ros::spinOnce();
  EXPECT_EQ(h.count, 1U);
}
