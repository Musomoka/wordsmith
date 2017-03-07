require 'test_helper'

class DialectsControllerTest < ActionDispatch::IntegrationTest
   setup do
    @dialect = dialects(:one)
  end

  test "should get dialects index" do
    get dialects_url
    assert_response :success
  end

  test "should get dialects new" do
    get new_dialect_url
    assert_response :success
  end

  test "should create dialect" do
    assert_difference('dialects.count') do
      post dialects_url, params: { dialect: { description: @dialect.description, dialect_name: @dialect.dialect_name } }
    end

    assert_redirected_to dialect_url(dialect.last)
    assert_equal 'Dialect was successfully created.', flash[:notice]
  end

  test "should show dialect" do
    get dialect_url(@dialect)
    assert_response :success
  end

  test "should get dialects edit" do
    get edit_dialect_url(@dialect)
    assert_response :success
  end

  test "should update dialects" do
    patch dialect_url(@dialect),  { dialect: { description: @dialect.description, dialect_name: @dialect.dialect_name } }
    assert_redirected_to dialects_url(@dialect)
    assert_equal 'Dialect was successfully updated.', flash[:notice]
  end

  test "should destroy dialect" do
    assert_difference('dialect.count', -1) do
      delete dialect_url(@dialect)
    end

    assert_redirected_to dialects_url
  end

end
