// Generated by gencpp from file hw1/SumService.msg
// DO NOT EDIT!


#ifndef HW1_MESSAGE_SUMSERVICE_H
#define HW1_MESSAGE_SUMSERVICE_H

#include <ros/service_traits.h>


#include <hw1/SumServiceRequest.h>
#include <hw1/SumServiceResponse.h>


namespace hw1
{

struct SumService
{

typedef SumServiceRequest Request;
typedef SumServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SumService
} // namespace hw1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hw1::SumService > {
  static const char* value()
  {
    return "4a8b78d0bc5b95d47376deaeb16c7607";
  }

  static const char* value(const ::hw1::SumService&) { return value(); }
};

template<>
struct DataType< ::hw1::SumService > {
  static const char* value()
  {
    return "hw1/SumService";
  }

  static const char* value(const ::hw1::SumService&) { return value(); }
};


// service_traits::MD5Sum< ::hw1::SumServiceRequest> should match
// service_traits::MD5Sum< ::hw1::SumService >
template<>
struct MD5Sum< ::hw1::SumServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hw1::SumService >::value();
  }
  static const char* value(const ::hw1::SumServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hw1::SumServiceRequest> should match
// service_traits::DataType< ::hw1::SumService >
template<>
struct DataType< ::hw1::SumServiceRequest>
{
  static const char* value()
  {
    return DataType< ::hw1::SumService >::value();
  }
  static const char* value(const ::hw1::SumServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hw1::SumServiceResponse> should match
// service_traits::MD5Sum< ::hw1::SumService >
template<>
struct MD5Sum< ::hw1::SumServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hw1::SumService >::value();
  }
  static const char* value(const ::hw1::SumServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hw1::SumServiceResponse> should match
// service_traits::DataType< ::hw1::SumService >
template<>
struct DataType< ::hw1::SumServiceResponse>
{
  static const char* value()
  {
    return DataType< ::hw1::SumService >::value();
  }
  static const char* value(const ::hw1::SumServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HW1_MESSAGE_SUMSERVICE_H
