require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: 'test@test.com', password: 'qwerty')
  end

  test 'todo should be valid' do
    @todo = @user.todos.new(title: 'abc', description: 'abcdef')
    assert @todo.save
  end

  test 'title and description shouldnt be empty ' do
    @todo = @user.todos.new(title: '', description: '')
    assert_not @todo.save
  end

  test 'title and description shouldnt be too long' do
    @todo = @user.todos.new(title: 'a' * 21, description: 'a' * 151)
    assert_not @todo.save
  end
end
