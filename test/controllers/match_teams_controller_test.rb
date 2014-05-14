require 'test_helper'

class MatchTeamsControllerTest < ActionController::TestCase
  setup do
    @match_team = match_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_team" do
    assert_difference('MatchTeam.count') do
      post :create, match_team: { local: @match_team.local, match_id: @match_team.match_id, team_id: @match_team.team_id }
    end

    assert_redirected_to match_team_path(assigns(:match_team))
  end

  test "should show match_team" do
    get :show, id: @match_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_team
    assert_response :success
  end

  test "should update match_team" do
    patch :update, id: @match_team, match_team: { local: @match_team.local, match_id: @match_team.match_id, team_id: @match_team.team_id }
    assert_redirected_to match_team_path(assigns(:match_team))
  end

  test "should destroy match_team" do
    assert_difference('MatchTeam.count', -1) do
      delete :destroy, id: @match_team
    end

    assert_redirected_to match_teams_path
  end
end
