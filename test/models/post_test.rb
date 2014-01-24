require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "setting image" do
    subject = Post.new
    filepath = Rails.root.join('test','fixtures', 'fox.png')
    subject.image = filepath
    assert_equal 'fox.png', subject.image.name
  end
  test "setting image and thumb" do
    subject = Post.new
    filepath = Rails.root.join('test','fixtures', 'fox.png')
    subject.image = filepath
    subject.set_thumb
    assert_equal 'fox.png', subject.image.name
  end
end
