require('minitest/autorun')
require('minitest/rg')
require_relative('../main_bar.rb')

class TestMainBar < Minitest::Test

  def setup
    # @song1 = Song.new("Dancing Queen")
    # @guest1 = Guest.new("Jimi", 50, @song1)

    @thecaraokebar = MainBar.new("The Caraoke Bar", 10, 6)

  end


  def test_can_create_class
    assert_equal(MainBar, @thecaraokebar.class())
  end


  def test_bar_has_fee
    assert_equal(10, @thecaraokebar.entry_fee)
  end


  def test_increase_daily_takings
    assert_equal(10, @thecaraokebar.increase_daily_takings(10))
  end


end
