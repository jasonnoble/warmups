class WelcomeController < ApplicationController
  def index
    @is_it_christmas = is_it_christmas? ? 'YES' : 'NO'
  end

  private

  def is_it_christmas?
    time = Time.zone.now

    time.month == 3 &&
      time.day == 18
  end
end
