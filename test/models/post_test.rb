require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "dragonfly works" do
    p = Post.new
    p.image = Rails.root.join('test', 'fixtures', 'knife.jpg')
    assert_not_nil p.image.size
  end

  test "dragonfly with custom processor" do
    p = Post.new
    p.image = Rails.root.join('test', 'fixtures', 'knife.jpg')
    assert_not_nil p.image.testing.size
    # THIS FAIL :
    # PostTest#test_dragonfly_with_custom_processor:
    #   TypeError: can't convert nil into String
    #   test/models/post_test.rb:17:in `block in <class:PostTest>'
  end

end
