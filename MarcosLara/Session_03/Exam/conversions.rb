module Conversions
  def mm_to_cm(millimeters)
    millimeters.fdiv(10)
  end

  def cm_to_m(centimeters)
    centimeters.fdiv(100)
  end

  def m_to_km(meters)
    meters.fdiv(1000)
  end
end