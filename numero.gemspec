$LOAD_PATH.unshift 'lib'

require 'numero'

Gem::Specification.new do |s|
  s.name             = 'numero'
  s.version          = Numero::Version
  s.date             = Time.now.strftime('%Y-%m-%d')
  s.summary          = 'Numero: Phone number validation for Ruby/Rails'
  s.homepage         = 'http://github.com/itspriddle/numer'
  s.authors          = ['Joshua Priddle']
  s.email            = 'jpriddle@nevercraft.net'

  s.files            = %w[ Rakefile README.markdown ]

  s.files           += Dir['lib/**/*']
  s.files           += Dir['test/**/*']


  s.extra_rdoc_files = ['README.markdown']
  s.rdoc_options     = ["--charset=UTF-8"]

  s.description = <<-DESC
    Numero: Phone number validation for Ruby/Rails
  DESC
end
