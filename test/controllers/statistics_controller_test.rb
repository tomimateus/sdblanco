require 'test_helper'

class StatisticsControllerTest < ActionController::TestCase
  setup do
    @statistic = statistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statistic" do
    assert_difference('Statistic.count') do
      post :create, statistic: { goals_received: @statistic.goals_received, goals_scored: @statistic.goals_scored, lost: @statistic.lost, played: @statistic.played, points: @statistic.points, red_cards: @statistic.red_cards, team_id: @statistic.team_id, tied: @statistic.tied, tournament_id: @statistic.tournament_id, won: @statistic.won, yellow_cards: @statistic.yellow_cards }
    end

    assert_redirected_to statistic_path(assigns(:statistic))
  end

  test "should show statistic" do
    get :show, id: @statistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statistic
    assert_response :success
  end

  test "should update statistic" do
    patch :update, id: @statistic, statistic: { goals_received: @statistic.goals_received, goals_scored: @statistic.goals_scored, lost: @statistic.lost, played: @statistic.played, points: @statistic.points, red_cards: @statistic.red_cards, team_id: @statistic.team_id, tied: @statistic.tied, tournament_id: @statistic.tournament_id, won: @statistic.won, yellow_cards: @statistic.yellow_cards }
    assert_redirected_to statistic_path(assigns(:statistic))
  end

  test "should destroy statistic" do
    assert_difference('Statistic.count', -1) do
      delete :destroy, id: @statistic
    end

    assert_redirected_to statistics_path
  end
end
