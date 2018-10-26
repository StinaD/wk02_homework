require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Memories")
    @song2 = Song.new("Everybody")
  end


  def test_can_create_class()
    assert_equal(Song, @song1.class())
  end


end
