class VideoCardsController < ApplicationController
  def show
    @videocard = VideoCard.find(params[:id])
  end
end