class HomeController < ApplicationController

  def index
    @video_cards = VideoCard.order(created_at: :desc).limit(3)
  end
end