class Guest

  attr_reader :name, :favourite_song, :wallet

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end


  def favourite_song_title()
    return @favourite_song.title
  end

  def pay_fee(bar)
    if sufficient_funds(bar)
    @wallet -= bar.entry_fee
    end
  end

  def sufficient_funds(bar)
    @wallet >= bar.entry_fee
  end

  def favourite_song_on_playlist(room, song)
    if room.is_song_on_playlist(song)
      return "Whoo, #{@favourite_song.title}, that's my favourite!"
    end
  end



end
