// Generated by gencpp from file pan_tilt_description/transf.msg
// DO NOT EDIT!


#ifndef PAN_TILT_DESCRIPTION_MESSAGE_TRANSF_H
#define PAN_TILT_DESCRIPTION_MESSAGE_TRANSF_H

#include <ros/service_traits.h>


#include <pan_tilt_description/transfRequest.h>
#include <pan_tilt_description/transfResponse.h>


namespace pan_tilt_description
{

struct transf
{

typedef transfRequest Request;
typedef transfResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct transf
} // namespace pan_tilt_description


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pan_tilt_description::transf > {
  static const char* value()
  {
    return "f4f8a27149783d8b27548ce33c934862";
  }

  static const char* value(const ::pan_tilt_description::transf&) { return value(); }
};

template<>
struct DataType< ::pan_tilt_description::transf > {
  static const char* value()
  {
    return "pan_tilt_description/transf";
  }

  static const char* value(const ::pan_tilt_description::transf&) { return value(); }
};


// service_traits::MD5Sum< ::pan_tilt_description::transfRequest> should match
// service_traits::MD5Sum< ::pan_tilt_description::transf >
template<>
struct MD5Sum< ::pan_tilt_description::transfRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pan_tilt_description::transf >::value();
  }
  static const char* value(const ::pan_tilt_description::transfRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pan_tilt_description::transfRequest> should match
// service_traits::DataType< ::pan_tilt_description::transf >
template<>
struct DataType< ::pan_tilt_description::transfRequest>
{
  static const char* value()
  {
    return DataType< ::pan_tilt_description::transf >::value();
  }
  static const char* value(const ::pan_tilt_description::transfRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pan_tilt_description::transfResponse> should match
// service_traits::MD5Sum< ::pan_tilt_description::transf >
template<>
struct MD5Sum< ::pan_tilt_description::transfResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pan_tilt_description::transf >::value();
  }
  static const char* value(const ::pan_tilt_description::transfResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pan_tilt_description::transfResponse> should match
// service_traits::DataType< ::pan_tilt_description::transf >
template<>
struct DataType< ::pan_tilt_description::transfResponse>
{
  static const char* value()
  {
    return DataType< ::pan_tilt_description::transf >::value();
  }
  static const char* value(const ::pan_tilt_description::transfResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PAN_TILT_DESCRIPTION_MESSAGE_TRANSF_H
