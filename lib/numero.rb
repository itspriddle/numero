module Numero
  VERSION = Version = '0.0.1'

  # See http://en.wikipedia.org/wiki/North_American_Numbering_Plan
  VALID_PHONE_NUMBER = /^1?([2-9][0-9]{2})([2-9][0-9]{2})([0-9]{4})$/

  def self.valid_number?(number)
    !! number.to_s.match(VALID_PHONE_NUMBER)
  end
end
