template<typename T>
class Node
{
public:
    Node();
	Node(const std::string& node);
	~Node();
	ros::Publisher& AddPublisher(const std::string& publisher);
    void AddMessage(T message);  
    std::vector<T> GetAllMessages() const;
    T GetMessage(const int& index) const;
    ros::Subscriber& AddSubscriber(const std::string& subscriber);
    void Publish(T& message);
    void RegisterCallBack(const std::string& subscriber, std::function& funcObj);

private:

   std::string publisher_;
   std::map<std::string, ros::Subsciber> subscribers_;
   std::vector<T> messages_;
};
    
    


    
