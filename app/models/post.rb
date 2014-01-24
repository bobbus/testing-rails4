class Post < ActiveRecord::Base

  dragonfly_accessor :image
  dragonfly_accessor :image_thumb

  def set_thumb
    self.image_thumb = image.encode('jpg')
  end

end
