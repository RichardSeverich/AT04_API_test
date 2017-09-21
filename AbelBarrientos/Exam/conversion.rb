module Conversion

  def mm_to_cm milimeters
    milimeters.to_f / 10.0
  end

  def cm_to_m centimeters
    centimeters.to_f / 100.0
  end

  def m_to_km meters
    meters.to_f / 1000.0
  end
end
