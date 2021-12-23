class BlueDistinctionPlus < BaseAward
  def initialize(expires_in, quality)
    super
    @day = 0
    @max_quality = 80
  end

  def update_quality
    @quality = @max_quality
    set_quality
  end
end
