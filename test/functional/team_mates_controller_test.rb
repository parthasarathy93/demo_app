require 'test_helper'

class TeamMatesControllerTest < ActionController::TestCase
  setup do
    @team_mate = team_mates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_mates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_mate" do
    assert_difference('TeamMate.count') do
      post :create, team_mate: { email: @team_mate.email, name: @team_mate.name, teamname: @team_mate.teamname }
    end

    assert_redirected_to team_mate_path(assigns(:team_mate))
  end

  test "should show team_mate" do
    get :show, id: @team_mate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_mate
    assert_response :success
  end

  test "should update team_mate" do
    put :update, id: @team_mate, team_mate: { email: @team_mate.email, name: @team_mate.name, teamname: @team_mate.teamname }
    assert_redirected_to team_mate_path(assigns(:team_mate))
  end

  test "should destroy team_mate" do
    assert_difference('TeamMate.count', -1) do
      delete :destroy, id: @team_mate
    end

    assert_redirected_to team_mates_path
  end
end
