require 'test_helper'

class MatchPlayersControllerTest < ActionController::TestCase
  setup do
    @match_player = match_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_player" do
    assert_difference('MatchPlayer.count') do
      post :create, match_player: { goals: @match_player.goals, match_id: @match_player.match_id, player_id: @match_player.player_id, red_cards: @match_player.red_cards, yellow_cards: @match_player.yellow_cards }
    end

    assert_redirected_to match_player_path(assigns(:match_player))
  end

  test "should show match_player" do
    get :show, id: @match_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_player
    assert_response :success
  end

  test "should update match_player" do
    patch :update, id: @match_player, match_player: { goals: @match_player.goals, match_id: @match_player.match_id, player_id: @match_player.player_id, red_cards: @match_player.red_cards, yellow_cards: @match_player.yellow_cards }
    assert_redirected_to match_player_path(assigns(:match_player))
  end

  test "should destroy match_player" do
    assert_difference('MatchPlayer.count', -1) do
      delete :destroy, id: @match_player
    end

    assert_redirected_to match_players_path
  end
end
