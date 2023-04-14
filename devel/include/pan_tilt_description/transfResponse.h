// Generated by gencpp from file pan_tilt_description/transfResponse.msg
// DO NOT EDIT!


#ifndef PAN_TILT_DESCRIPTION_MESSAGE_TRANSFRESPONSE_H
#define PAN_TILT_DESCRIPTION_MESSAGE_TRANSFRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace pan_tilt_description
{
template <class ContainerAllocator>
struct transfResponse_
{
  typedef transfResponse_<ContainerAllocator> Type;

  transfResponse_()
    : transf()  {
    }
  transfResponse_(const ContainerAllocator& _alloc)
    : transf(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _transf_type;
  _transf_type transf;





  typedef boost::shared_ptr< ::pan_tilt_description::transfResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pan_tilt_description::transfResponse_<ContainerAllocator> const> ConstPtr;

}; // struct transfResponse_

typedef ::pan_tilt_description::transfResponse_<std::allocator<void> > transfResponse;

typedef boost::shared_ptr< ::pan_tilt_description::transfResponse > transfResponsePtr;
typedef boost::shared_ptr< ::pan_tilt_description::transfResponse const> transfResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pan_tilt_description::transfResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pan_tilt_description::transfResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pan_tilt_description::transfResponse_<ContainerAllocator1> & lhs, const ::pan_tilt_description::transfResponse_<ContainerAllocator2> & rhs)
{
  return lhs.transf == rhs.transf;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pan_tilt_description::transfResponse_<ContainerAllocator1> & lhs, const ::pan_tilt_description::transfResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pan_tilt_description

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pan_tilt_description::transfResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pan_tilt_description::transfResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pan_tilt_description::transfResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3387a3d5e947752a74515dc57640dc0b";
  }

  static const char* value(const ::pan_tilt_description::transfResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3387a3d5e947752aULL;
  static const uint64_t static_value2 = 0x74515dc57640dc0bULL;
};

template<class ContainerAllocator>
struct DataType< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pan_tilt_description/transfResponse";
  }

  static const char* value(const ::pan_tilt_description::transfResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose transf\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::pan_tilt_description::transfResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.transf);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct transfResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pan_tilt_description::transfResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pan_tilt_description::transfResponse_<ContainerAllocator>& v)
  {
    s << indent << "transf: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.transf);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAN_TILT_DESCRIPTION_MESSAGE_TRANSFRESPONSE_H