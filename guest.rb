class Guest

  attr_reader :name, :favourite_song, :wallet

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def pay_fee(bar)
    @wallet -= bar.entry_fee
  end

  def favourite_song_title()
    return @favourite_song.title
  end





  # def guest_fave_song_on_list(guest)
  #   if @playlist.include?(guest.favourite_song)
  #     return "Whoo, my favourite!!"
  #   else
  #     return "Better add your song to the list!"
  #   end
  # end

end
