#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include "sevendof_man/transf.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Pose.h"

using namespace std;

int main(int argc, char** argv){

ros::init(argc, argv, "tf_client_broadcaster");

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<sevendof_man::transf>("transf");
    sevendof_man::transf srv;
    srv.request.frame_a.data = "base_link";
    srv.request.frame_b.data = "EE";

    ROS_INFO("Waiting for the client server");
	client.waitForExistence();
	ROS_INFO("Client server up now");

    tf::TransformBroadcaster br;
    tf::Transform transform;
    tf::Quaternion q;

    ros::Rate r(100);
    while (ros::ok()) {

        if (!client.call(srv)) {
		ROS_ERROR("Error calling the service");
		return 1;
	    }

        cout << "Service output: " << srv.response.transf << endl;

        transform.setOrigin( tf::Vector3(srv.response.transf.position.x, srv.response.transf.position.y, srv.response.transf.position.z) );
        q.setRPY(srv.response.transf.orientation.x, srv.response.transf.orientation.y, srv.response.transf.orientation.z);
        br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "dynamic_tf"));

        r.sleep();

    }

    return 0;

}