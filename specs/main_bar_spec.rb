require('minitest/autorun')
require('minitest/rg')
require_relative('../main_bar.rb')

class TestMainBar < Minitest::Test

  def setup
    @thecaraokebar = MainBar.new("The Caraoke Bar", 10, 6)
  end


  def test_can_create_class
    assert_equal(MainBar, @thecaraokebar.class())
  end



end
