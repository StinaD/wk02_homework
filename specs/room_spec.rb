require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')
require('pry')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Purple Room")

    @song1 = Song.new("Memories")
    @song2 = Song.new("Everybody")
    @song2 = Song.new("Billie Jean")
    @song4 = Song.new("Yellow Submarine")
    @song5 = Song.new("My Way")

    @guest1 = Guest.new("Chris", 100, @song1)
    @guest2 = Guest.new("Johnny", 120, @song2)
    @guest3 = Guest.new("Will", 50, @song3)
    @guest4 = Guest.new("Guy", 150, @song4)
    @guest5 = Guest.new("Gary", 200, @song5)
    @guest6 = Guest.new("Robbie", 250, @song1)
    @guest7 = Guest.new("Howard", 150, @song2)



  end



  def test_can_create_class()
    assert_equal(Room, @room1.class())
  end


  def test_add_song_to_playlist()
    expected = @song1
    actual = @room1.add_song_to_playlist(@song1)
    assert_equal(expected, actual)
  end


  def test_check_guest_in_to_room
    expected = "Chris"
    actual = @room1.check_in_guest(@guest1.name)
    assert_equal(expected, actual)
  end


  def test_try_to_check_in_to_full_room
    @room1.check_in_guest(@guest1.name)
    @room1.check_in_guest(@guest2.name)
    @room1.check_in_guest(@guest3.name)
    @room1.check_in_guest(@guest4.name)
    @room1.check_in_guest(@guest5.name)
    @room1.check_in_guest(@guest6.name)

    expected = "Room is full"
    actual = @room1.check_in_guest(@guest7.name)

    assert_equal(expected, actual)
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


  # def test_fave_song_on_playlist
  #   @room1.add_song_to_playlist(@song1)
  #   @room1.add_song_to_playlist(@song2)
  #   @room1.add_song_to_playlist(@song5)
  #
  #   expected = "Whoo, my favourite!!"
  #   actual = @room1.guest_fave_song_on_list(@guest1)
  #
  #   assert_equal(expected, actual)
  #
  # end



end
