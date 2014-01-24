class Post < ActiveRecord::Base

  dragonfly_accessor :image
  dragonfly_accessor :other
end
