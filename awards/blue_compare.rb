class BlueCompare < BaseAward
  def update_quality
    if expired?
      @quality = 0
    else
      case @expires_in
      when (0..5)
        @quality += 3
      when (6..10)
        @quality += 2
      else
        @quality += 1
      end
    end
    set_quality
  end
end
