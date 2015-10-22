class PicturesController < ApplicationController

def index
  @pictures = Picture.all
end

before_filter :authenticate_user!, except: [:index, :show]

end
