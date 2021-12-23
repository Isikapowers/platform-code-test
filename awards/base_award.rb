class BaseAward < Award
  attr_reader :day

  def initialize(expires_in, quality)
    @expires_in = expires_in
    @quality = quality
    @max_quality = 50
    @min_quality = 0
    @day = 1
  end

  def expired?
    @expires_in <= 0
  end

  def update_expires_in_days
    @expires_in -= @day
  end

  def set_quality
    if @quality > @max_quality
      @quality = @max_quality
    elsif @quality < @min_quality
      @quality = @min_quality
    else
      @quality
    end
  end

  def update_quality
    expired? ? @quality -= 2 : @quality -= 1
    set_quality
  end
end
