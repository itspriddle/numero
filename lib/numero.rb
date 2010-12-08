module Numero
  VERSION = Version = '0.0.1'

  VALID_US_NUMBER = /^1?([2-9][0-8][0-9])([2-9][0-9]{2})([0-9]{4})$/

  def self.valid_us_number?(number)
    !! number.to_s.match(VALID_US_NUMBER)
  end
end
