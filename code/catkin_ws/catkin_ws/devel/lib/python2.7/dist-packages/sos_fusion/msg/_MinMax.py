# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sos_fusion/MinMax.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class MinMax(genpy.Message):
  _md5sum = "07d108d9b7862b4dd2cf6e8fa86751ba"
  _type = "sos_fusion/MinMax"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Max and Min x, y points of cluster
geometry_msgs/Point cen
geometry_msgs/Point min
geometry_msgs/Point max

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['cen','min','max']
  _slot_types = ['geometry_msgs/Point','geometry_msgs/Point','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cen,min,max

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MinMax, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cen is None:
        self.cen = geometry_msgs.msg.Point()
      if self.min is None:
        self.min = geometry_msgs.msg.Point()
      if self.max is None:
        self.max = geometry_msgs.msg.Point()
    else:
      self.cen = geometry_msgs.msg.Point()
      self.min = geometry_msgs.msg.Point()
      self.max = geometry_msgs.msg.Point()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_9d().pack(_x.cen.x, _x.cen.y, _x.cen.z, _x.min.x, _x.min.y, _x.min.z, _x.max.x, _x.max.y, _x.max.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cen is None:
        self.cen = geometry_msgs.msg.Point()
      if self.min is None:
        self.min = geometry_msgs.msg.Point()
      if self.max is None:
        self.max = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.cen.x, _x.cen.y, _x.cen.z, _x.min.x, _x.min.y, _x.min.z, _x.max.x, _x.max.y, _x.max.z,) = _get_struct_9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9d().pack(_x.cen.x, _x.cen.y, _x.cen.z, _x.min.x, _x.min.y, _x.min.z, _x.max.x, _x.max.y, _x.max.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cen is None:
        self.cen = geometry_msgs.msg.Point()
      if self.min is None:
        self.min = geometry_msgs.msg.Point()
      if self.max is None:
        self.max = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.cen.x, _x.cen.y, _x.cen.z, _x.min.x, _x.min.y, _x.min.z, _x.max.x, _x.max.y, _x.max.z,) = _get_struct_9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
