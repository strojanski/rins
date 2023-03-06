// Generated by gencpp from file hw1/SumServiceRequest.msg
// DO NOT EDIT!


#ifndef HW1_MESSAGE_SUMSERVICEREQUEST_H
#define HW1_MESSAGE_SUMSERVICEREQUEST_H


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
struct SumServiceRequest_
{
  typedef SumServiceRequest_<ContainerAllocator> Type;

  SumServiceRequest_()
    : data()  {
    }
  SumServiceRequest_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int64_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int64_t>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::hw1::SumServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hw1::SumServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SumServiceRequest_

typedef ::hw1::SumServiceRequest_<std::allocator<void> > SumServiceRequest;

typedef boost::shared_ptr< ::hw1::SumServiceRequest > SumServiceRequestPtr;
typedef boost::shared_ptr< ::hw1::SumServiceRequest const> SumServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hw1::SumServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hw1::SumServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hw1::SumServiceRequest_<ContainerAllocator1> & lhs, const ::hw1::SumServiceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hw1::SumServiceRequest_<ContainerAllocator1> & lhs, const ::hw1::SumServiceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hw1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hw1::SumServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hw1::SumServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hw1::SumServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hw1::SumServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hw1::SumServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hw1::SumServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hw1::SumServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "79cd2e4a60f8fd7afcb0476d2ea77fdc";
  }

  static const char* value(const ::hw1::SumServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x79cd2e4a60f8fd7aULL;
  static const uint64_t static_value2 = 0xfcb0476d2ea77fdcULL;
};

template<class ContainerAllocator>
struct DataType< ::hw1::SumServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hw1/SumServiceRequest";
  }

  static const char* value(const ::hw1::SumServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hw1::SumServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[] data\n"
;
  }

  static const char* value(const ::hw1::SumServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hw1::SumServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SumServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hw1::SumServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hw1::SumServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HW1_MESSAGE_SUMSERVICEREQUEST_H