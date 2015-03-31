class BottlesController < ApplicationController
  def bottles
    @number = params[:number].to_i
  end

  def take
    @number = params[:number].to_i
  end
end
