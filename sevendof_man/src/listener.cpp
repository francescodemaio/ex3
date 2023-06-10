#include <ros/ros.h>
#include "sevendof_man/transf.h"
#include <tf/transform_listener.h>
#include "std_msgs/String.h"
#include "geometry_msgs/Pose.h"

using namespace std;

bool service_callback(sevendof_man::transf::Request &req, sevendof_man::transf::Response &res){

    cout<<"Ricevuta Richiesta, FRAME_A: "<<req.frame_a.data<<"\n";
    cout<<"Ricevuta Richiesta, FRAME_B: "<<req.frame_b.data<<"\n";

    tf::TransformListener listener;
    tf::StampedTransform transform;

    try{
        listener.waitForTransform(req.frame_a.data, req.frame_b.data, ros::Time(0), ros::Duration(3.0));
        listener.lookupTransform(req.frame_a.data, req.frame_b.data, ros::Time(0), transform);
    }
    catch (tf::TransformException ex){
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
    }

    ROS_INFO_STREAM(" Transform: " << 
        
        transform.getOrigin().x() << ", " << 
        transform.getOrigin().y() << ", " <<
        transform.getOrigin().z() << ", " << 
        transform.getRotation().x() << ", " << 
        transform.getRotation().y() << ", " << 
        transform.getRotation().z()
    );

    res.transf.position.x = transform.getOrigin().x();
    res.transf.position.y = transform.getOrigin().y();
    res.transf.position.z = transform.getOrigin().z();
    res.transf.orientation.x = transform.getRotation().getX();
    res.transf.orientation.y = transform.getRotation().getY();
    res.transf.orientation.z = transform.getRotation().getZ();
    res.transf.orientation.w = transform.getRotation().getW();

    return true;

}

int main(int argc, char **argv) {

	ros::init(argc, argv, "sevendof_man");
	ros::NodeHandle n;

	ros::ServiceServer service = n.advertiseService("transf", service_callback);

	ros::spin();

	return 0;
}