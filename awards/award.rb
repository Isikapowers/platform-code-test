class Award
  attr_accessor :expires_in, :quality
  attr_reader :name

  def initialize(name, expires_in, quality)
    @award_type = set_award_type(name, expires_in, quality)
    @name = name
    @expires_in = expires_in
    @quality = quality
  end

  def update
    @expires_in = @award_type.update_expires_in_days
    @quality = @award_type.update_quality
  end

  def set_award_type(name, expires_in, quality)
    case name
    when 'Blue First'
      BlueFirst.new(expires_in, quality)
    when 'Blue Distinction Plus'
      BlueDistinctionPlus.new(expires_in, quality)
    when 'BlueCompare'
      BlueCompare.new(expires_in, quality)
    when 'Blue Star'
      BlueStar.new(expires_in, quality)
    else
      BaseAward.new(expires_in, quality)
    end
  end
end
