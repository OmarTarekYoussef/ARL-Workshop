# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from model/model.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class model(genpy.Message):
  _md5sum = "d6e1c30125128374c4d6c2133db77f6f"
  _type = "model/model"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 velocity
float64 delta
float64 beta
float64 xc_dot
float64 ycdot
float64 theta_dot
float64 delta_dot
float64 xc
float64 yc
float64 theta
"""
  __slots__ = ['velocity','delta','beta','xc_dot','ycdot','theta_dot','delta_dot','xc','yc','theta']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       velocity,delta,beta,xc_dot,ycdot,theta_dot,delta_dot,xc,yc,theta

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(model, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.velocity is None:
        self.velocity = 0.
      if self.delta is None:
        self.delta = 0.
      if self.beta is None:
        self.beta = 0.
      if self.xc_dot is None:
        self.xc_dot = 0.
      if self.ycdot is None:
        self.ycdot = 0.
      if self.theta_dot is None:
        self.theta_dot = 0.
      if self.delta_dot is None:
        self.delta_dot = 0.
      if self.xc is None:
        self.xc = 0.
      if self.yc is None:
        self.yc = 0.
      if self.theta is None:
        self.theta = 0.
    else:
      self.velocity = 0.
      self.delta = 0.
      self.beta = 0.
      self.xc_dot = 0.
      self.ycdot = 0.
      self.theta_dot = 0.
      self.delta_dot = 0.
      self.xc = 0.
      self.yc = 0.
      self.theta = 0.

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
      buff.write(_get_struct_10d().pack(_x.velocity, _x.delta, _x.beta, _x.xc_dot, _x.ycdot, _x.theta_dot, _x.delta_dot, _x.xc, _x.yc, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 80
      (_x.velocity, _x.delta, _x.beta, _x.xc_dot, _x.ycdot, _x.theta_dot, _x.delta_dot, _x.xc, _x.yc, _x.theta,) = _get_struct_10d().unpack(str[start:end])
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
      buff.write(_get_struct_10d().pack(_x.velocity, _x.delta, _x.beta, _x.xc_dot, _x.ycdot, _x.theta_dot, _x.delta_dot, _x.xc, _x.yc, _x.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 80
      (_x.velocity, _x.delta, _x.beta, _x.xc_dot, _x.ycdot, _x.theta_dot, _x.delta_dot, _x.xc, _x.yc, _x.theta,) = _get_struct_10d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10d = None
def _get_struct_10d():
    global _struct_10d
    if _struct_10d is None:
        _struct_10d = struct.Struct("<10d")
    return _struct_10d
