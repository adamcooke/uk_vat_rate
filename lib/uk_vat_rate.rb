class UkVatRate
  
  def self.on(date)
    if  Date.new(1973, 1, 1) < date && date < Date.new(2008, 12, 31)
      17.5
    elsif Date.new(2009, 01, 01) < date && date < Date.new(2009, 12, 31)
      15
    elsif Date.new(2010, 01, 01) < date && date < Date.new(2011, 01, 03)
      17.5
    else
      20
    end
  end
  
end

class Time
  def uk_vat_rate
    UkVatRate.on(self.send(:to_date))
  end
end

class Date
  def uk_vat_rate
    UkVatRate.on(self)
  end
end
