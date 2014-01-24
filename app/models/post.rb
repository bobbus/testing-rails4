class Post < ActiveRecord::Base

  dragonfly_accessor :image do
    copy_to(:image_thumb) { |a| a.encode('jpg') }
  end
  dragonfly_accessor :image_thumb

end
