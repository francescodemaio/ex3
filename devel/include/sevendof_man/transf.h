// Generated by gencpp from file sevendof_man/transf.msg
// DO NOT EDIT!


#ifndef SEVENDOF_MAN_MESSAGE_TRANSF_H
#define SEVENDOF_MAN_MESSAGE_TRANSF_H

#include <ros/service_traits.h>


#include <sevendof_man/transfRequest.h>
#include <sevendof_man/transfResponse.h>


namespace sevendof_man
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
} // namespace sevendof_man


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sevendof_man::transf > {
  static const char* value()
  {
    return "f4f8a27149783d8b27548ce33c934862";
  }

  static const char* value(const ::sevendof_man::transf&) { return value(); }
};

template<>
struct DataType< ::sevendof_man::transf > {
  static const char* value()
  {
    return "sevendof_man/transf";
  }

  static const char* value(const ::sevendof_man::transf&) { return value(); }
};


// service_traits::MD5Sum< ::sevendof_man::transfRequest> should match
// service_traits::MD5Sum< ::sevendof_man::transf >
template<>
struct MD5Sum< ::sevendof_man::transfRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sevendof_man::transf >::value();
  }
  static const char* value(const ::sevendof_man::transfRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sevendof_man::transfRequest> should match
// service_traits::DataType< ::sevendof_man::transf >
template<>
struct DataType< ::sevendof_man::transfRequest>
{
  static const char* value()
  {
    return DataType< ::sevendof_man::transf >::value();
  }
  static const char* value(const ::sevendof_man::transfRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sevendof_man::transfResponse> should match
// service_traits::MD5Sum< ::sevendof_man::transf >
template<>
struct MD5Sum< ::sevendof_man::transfResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sevendof_man::transf >::value();
  }
  static const char* value(const ::sevendof_man::transfResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sevendof_man::transfResponse> should match
// service_traits::DataType< ::sevendof_man::transf >
template<>
struct DataType< ::sevendof_man::transfResponse>
{
  static const char* value()
  {
    return DataType< ::sevendof_man::transf >::value();
  }
  static const char* value(const ::sevendof_man::transfResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SEVENDOF_MAN_MESSAGE_TRANSF_H
