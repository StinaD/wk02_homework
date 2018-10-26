require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Purple Room")
    @guest1 = Guest.new("Chris", 100, "My Way")
    @guest2 = Guest.new("Johnny", 120, "Thriller")
    @song1 = Song.new("Yellow Submarine")
  end



  def test_can_create_class()
    assert_equal(Room, @room1.class())
  end


  def test_add_song_to_playlist()
    expected = "Yellow Submarine"
    actual = @room1.add_song_to_playlist(@song1.title)
    assert_equal(expected, actual)
  end


  def test_check_guest_in_to_room
    expected = "Chris"
    actual = @room1.check_in_guest(@guest1.name)
  end


  def test_how_many_guests_in_room
    @room1.check_in_guest(@guest1.name)
    @room1.check_in_guest(@guest2.name)

    assert_equal(2, @room1.how_many_guests)
  end


  def test_remove_guest_from_room
    @room1.check_in_guest(@guest1.name)
    @room1.check_in_guest(@guest2.name)
    @room1.remove_guest(@guest2.name)

    assert_equal(1, @room1.how_many_guests)
  end

  




end
