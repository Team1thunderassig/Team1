#include "ros/ros.h"
#include "VehicleDataReader/CANMessage.h"

namespace assignment
{
	template <class T>
	class SampleAnalyzer
	{
	public:
		SampleAnalyzer() = default;

		SampleAnalyzer(const ros::Publisher& publisher, int samples = 0)
		: publisher_(publisher)
		, samples_(samples)
		, detected_samples_count(0)
        , published_count(0)
		{}

		~SampleAnalyzer() = default;

		void anamolyHandlerCallback(const T& msg)	
		{
			bool isMoving = (msg.vehicleSpeed > 0) ? true : false;
			bool isDoorOpen = (msg.driverdoor_open || msg.frontPassengerDoor_open || msg.rearLeftDoor_open || msg.rearRightDoor_open) ? true : false;
			bool anamoly = isMoving && isDoorOpen;
			ProcessSamples(msg, anamoly);
		}
   
        void SetSamplesSize(int&& sSize)
		{
			samples_ = sSize;
		}
   
        int AnamolyCount() const
		{
			return published_count;
		}

		void ResetCount()
		{
			published_count = 0;
		}

	private:
	   	void ProcessSamples(const T& msg, bool status)
		{
			if(IsSequenceInAnamoly(status))
			{
				++published_count;
				publisher_.publish(msg);
			}
		}

		bool IsSequenceInAnamoly(bool status)
		{
			bool anamolyDetected = false;
			if(status)
			{
				++detected_samples_count;
				if(detected_samples_count == samples_)
				{
					anamolyDetected = true;
					detected_samples_count = 0;
				}
			}
			else
			{
				detected_samples_count = 0;
			}
			return anamolyDetected;
		}
		
        
		const ros::Publisher& publisher_;
		int samples_;
		int detected_samples_count;
        int published_count;
	};
}

