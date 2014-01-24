class Post < ActiveRecord::Base

  dragonfly_accessor :image
  dragonfly_accessor :image_thumb
end
