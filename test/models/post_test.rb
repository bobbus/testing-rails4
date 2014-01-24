require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # PASS
  test "setting image" do
    subject = Post.new
    filepath = Rails.root.join('test','fixtures', 'fox.png')
    subject.image = filepath
    assert_equal 'fox.png', subject.image.name
  end

  # FAIL
  # PostTest#test_setting_image_and_thumb [/home/bob/doc/dev/test-apps/testing4/test/models/post_test.rb:22]:
  # Expected: "fox.png"
  #   Actual: "fox.jpg"

  test "setting image and thumb" do
    subject = Post.new
    filepath = Rails.root.join('test','fixtures', 'fox.png')
    subject.image = filepath
    subject.set_thumb
    assert_equal 'fox.png', subject.image.name
  end
end
