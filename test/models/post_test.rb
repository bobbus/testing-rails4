require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # FAIL
  # 1) Failure:
  # PostTest#test_setting_image_and_thumb [/home/bob/doc/dev/test-apps/testing4/test/models/post_test.rb:13]:
  # Expected /.png/ to match "/images/W1sicCIsInRodW1iIiwiMTAweDEwMFx1MDAzRSJdXQ?sha=5f8ab84d".
  test "setting image and thumb" do
    subject = Post.new
    filepath = Rails.root.join('test','fixtures', 'fox.png')
    subject.image = filepath
    assert_match /.png/, subject.image.thumb('100x100>').url
  end
end
