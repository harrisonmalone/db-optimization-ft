class HomesController < ApplicationController
  def index 
    @homes = Home.all.includes([:address, image_attachment: :blob])
  end
end
