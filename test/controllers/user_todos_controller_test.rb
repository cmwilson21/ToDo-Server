require "test_helper"

class UserTodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_todo = user_todos(:one)
  end

  test "should get index" do
    get user_todos_url, as: :json
    assert_response :success
  end

  test "should create user_todo" do
    assert_difference('UserTodo.count') do
      post user_todos_url, params: { user_todo: { todo_id: @user_todo.todo_id, user_id: @user_todo.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_todo" do
    get user_todo_url(@user_todo), as: :json
    assert_response :success
  end

  test "should update user_todo" do
    patch user_todo_url(@user_todo), params: { user_todo: { todo_id: @user_todo.todo_id, user_id: @user_todo.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_todo" do
    assert_difference('UserTodo.count', -1) do
      delete user_todo_url(@user_todo), as: :json
    end

    assert_response 204
  end
end
