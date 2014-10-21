require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = Users.new
    @user.id = 999
    # This code is not idiomatically correct.
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  test "micropost should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end
end
