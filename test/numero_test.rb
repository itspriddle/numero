require File.dirname(__FILE__) + '/test_helper.rb'

context 'Numero' do
  test 'validates a North American phone number' do
    valid_number   = 15185554488
    valid_number10 = 5185554488
    invalid_number = 11456581535

    assert Numero.valid_number?(valid_number)
    assert Numero.valid_number?(valid_number10)
    assert ! Numero.valid_number?(invalid_number)
  end
end
