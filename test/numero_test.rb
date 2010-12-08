require File.dirname(__FILE__) + '/test_helper.rb'

context 'Numero' do
  test 'validates a US number' do
    valid_number   = 15185554488
    valid_number10 = 15185554488
    invalid_number = 199999999999

    assert Numero.valid_us_number?(valid_number)
    assert Numero.valid_us_number?(valid_number10)
    assert ! Numero.valid_us_number?(invalid_number)
  end
end
