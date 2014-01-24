require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    subject = Post.new
    filepath = Rails.root.join('test','fixtures', 'fox.png')
    subject.image = filepath
    assert_equal 'fox.png', subject.image.name
  end
end
