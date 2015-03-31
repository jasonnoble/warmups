class ColorsController < ApplicationController
  def color
    @color = params[:color] || Color::COLORS.sample
    @colors = Color::COLORS
  end

  def set_color
    @color = params[:color]
    @colors = Color::COLORS
    redirect_to color_path(color: @color)
  end
end
