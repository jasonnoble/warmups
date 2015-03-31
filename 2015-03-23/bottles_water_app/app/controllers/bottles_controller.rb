class BottlesController < ApplicationController
  before_action :set_number

  def bottles
  end

  def take
  end

  private

  def set_number
    @number = params[:number].to_i
  end
end
