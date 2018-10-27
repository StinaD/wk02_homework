require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../main_bar.rb')
require_relative('../song.rb')
require_relative('../room.rb')
require('pry')

class TestGuest < Minitest::Test

  def setup
    @song1 = Song.new("Memories")
    @song2 = Song.new("Everybody")
    @song3 = Song.new("Billie Jean")

    @room1 = Room.new("Blue Room")

    @bar1 = MainBar.new("Jenny's Karaoke", 10, 6)

    @guest1 = Guest.new("Guy", 150, @song3)
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
    assert_equal(10, @bar1.entry_fee)
  end

  def test_has_sufficient_funds
    assert_equal(true, @guest1.sufficient_funds(@bar1))
  end

  def test_favourite_song
    assert_equal("Billie Jean", @guest1.favourite_song_title)
  end

  def test_fave_song_on_playlist
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)

    expected = "Whoo, Billie Jean, that's my favourite!"
    actual = @guest1.favourite_song_on_playlist(@room1, @song3)
    assert_equal(expected, actual)
  end



end
