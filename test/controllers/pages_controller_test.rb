require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get quem_somos" do
    get :quem_somos
    assert_response :success
  end

end
