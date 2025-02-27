class ScreensController < ApplicationController
  def show
    @screen = Screen.find(params[:id])
    @presentation = @screen.presentation
  end
end
