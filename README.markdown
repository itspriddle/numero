# Numero

This tiny gem contains helpers for validating North American phone numbers.

Add it to your `Gemfile`, or install as a plugin.


## Usage

Ruby:

    Numero.valid_number?('15554442222') #=> true
    Numero.valid_number?('194512') #=> false


Rails:

    class User < ActiveRecord::Base
      acts_as_numero :number
    end

    u = User.new(:number => '1234')
    u.valid? #=> false


## The North American Numbering Plan

Numero validates phone numbers based on the
[North American Numbering Plan](http://en.wikipedia.org/wiki/North_American_Numbering_Plan).

The NANP breaks phone numbers into 4 components:

    |A| B | C | D |
    +1-555-444-2222

    A. ITU country code
    B. NPA  - area code
    C. NXX  - Central Office code (exchange)
    D. XXXX - Subscriber Number

Each section allows for a specific set of numbers:

* **ITU**: This is always `+1` for North American numbers, although, it is
  most often written without the `+`.
* **NPA**: First digit must be in the range `[2-9]`, second and third digit
  can be any number `[0-9]`.
* **NXX**: First digit must be in the range `[2-9]`, second and third digit
  can be any number `[0-9]`.
* **XXXX**: [0-9] for each digit

