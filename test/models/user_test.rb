require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "user creation" do
    u = User.new
    assert_not u.save
  end
  
  test "twaat association" do
    u = User.find_by_username("user_1")
    t = Twaat.new(content: "new Twaat") 
    u.twaats << t
    assert u.save
    assert_equal 1, u.twaats.count
  end
  
  test "Test Validateur lengTH max 16" do
    u = User.new(username: 'a'*17)
    assert_not u.save
    assert_equal 1, u.errors.full_messages_for(:username).size
    assert u.errors.full_messages_for(:username).first.include? "too long"
  end
  
  test "Test Validateur lengTH min 4" do
    u = User.new(username: 'a'*3)
    assert_not u.save
    assert_equal 1, u.errors.full_messages_for(:username).size
    assert u.errors.full_messages_for(:username).first.include? "too short"
  end
  
  test "Test Validateur img present" do
    u = User.new(username: 'a'*17)
    assert_not u.save
    assert_equal 1, u.errors.full_messages_for(:img_url).size
    assert u.errors.full_messages_for(:img_url).first.include? "can't be blank"
  end
  
  test "Test Validateur user uniqueness" do
    # user_1 existe via users.yml
    u = User.new(username: 'user_1')
    assert_not u.save
    assert_equal 1, u.errors.full_messages_for(:username).size
    assert u.errors.full_messages_for(:username).first.include? "already been taken"
  end
  
end
