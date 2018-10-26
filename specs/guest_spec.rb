require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Guy", 150, "Yellow")
  end
    

  def test_can_create_class()
    assert_equal(Guest, @guest.class())
  end




end
