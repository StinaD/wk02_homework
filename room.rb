class Room

  attr_reader :room_name
  attr_accessor :guests_in_room, :playlist

  def initialize(room_name)
    @room_name = room_name
    @guests_in_room = []
    @playlist = []
  end



  def add_song_to_playlist(title)
    @playlist << title
    return @playlist[-1]
  end


  def check_in_guest(guest)
    if @guests_in_room.length >= 6
      return "Room is full"
    else
      @guests_in_room << guest
      return @guests_in_room[-1]
    end
  end


  def how_many_guests
    return @guests_in_room.length
  end


  def remove_guest(guest_name)
    @guests_in_room.delete_if do | person |
      person == guest_name
    end
  end


 def


end
