// Generated by gencpp from file hw1/SumServiceResponse.msg
// DO NOT EDIT!


#ifndef HW1_MESSAGE_SUMSERVICERESPONSE_H
#define HW1_MESSAGE_SUMSERVICERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hw1
{
template <class ContainerAllocator>
struct SumServiceResponse_
{
  typedef SumServiceResponse_<ContainerAllocator> Type;

  SumServiceResponse_()
    : sum(0)  {
    }
  SumServiceResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int64_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::hw1::SumServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hw1::SumServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SumServiceResponse_

typedef ::hw1::SumServiceResponse_<std::allocator<void> > SumServiceResponse;

typedef boost::shared_ptr< ::hw1::SumServiceResponse > SumServiceResponsePtr;
typedef boost::shared_ptr< ::hw1::SumServiceResponse const> SumServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hw1::SumServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hw1::SumServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hw1::SumServiceResponse_<ContainerAllocator1> & lhs, const ::hw1::SumServiceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hw1::SumServiceResponse_<ContainerAllocator1> & lhs, const ::hw1::SumServiceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hw1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hw1::SumServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hw1::SumServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hw1::SumServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hw1::SumServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hw1::SumServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hw1::SumServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hw1::SumServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b88405221c77b1878a3cbbfff53428d7";
  }

  static const char* value(const ::hw1::SumServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb88405221c77b187ULL;
  static const uint64_t static_value2 = 0x8a3cbbfff53428d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::hw1::SumServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hw1/SumServiceResponse";
  }

  static const char* value(const ::hw1::SumServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hw1::SumServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 sum\n"
"\n"
;
  }

  static const char* value(const ::hw1::SumServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hw1::SumServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SumServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hw1::SumServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hw1::SumServiceResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HW1_MESSAGE_SUMSERVICERESPONSE_H
