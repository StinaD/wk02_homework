require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../main_bar.rb')
require_relative('../song.rb')
require_relative('../room.rb')

class TestGuest < Minitest::Test

  def setup
    @song1 = Song.new("Memories")
    @song2 = Song.new("Everybody")
    @song3 = Song.new("Billie Jean")

    @guest1 = Guest.new("Guy", 150, @song3)

    @room1 = Room.new("Blue Room")

    @bar1 = MainBar.new("Jenny's Karaoke", 10, 6)
  end


  def test_can_create_class()
    assert_equal(Guest, @guest1.class())
  end

  def test_has_name
    assert_equal("Guy", @guest1.name)
  end

  def test_has_money
    assert_equal(150, @guest1.wallet)
  end

  def test_pay_fee
    @guest1.pay_fee(@bar1)
    assert_equal(140, @guest1.wallet)
  end

  def test_favourite_song
    assert_equal("Billie Jean", @guest1.favourite_song_title)
  end

  def test_is_favourite_song_on_list
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)

    expected = true
    actual = @room1.is_song_on_playlist(@song1)

    assert_equal(expected, actual)
  end

  

end
