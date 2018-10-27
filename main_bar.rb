class MainBar

  attr_reader :name, :entry_fee, :number_of_rooms, :daily_takings

  def initialize(name, entry_fee, number_of_rooms)
    @name = name
    @entry_fee = entry_fee
    @number_of_rooms = number_of_rooms
    @daily_takings = 0
  end



end
