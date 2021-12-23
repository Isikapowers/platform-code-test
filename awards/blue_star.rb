class BlueStar < BaseAward
  def update_quality
    expired? ? @quality -= 4 : @quality -= 2
    set_quality
  end
end
