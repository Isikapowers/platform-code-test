class BlueFirst < BaseAward
  def update_quality
    expired? ? @quality += 2 : @quality += 1

    set_quality
  end
end
