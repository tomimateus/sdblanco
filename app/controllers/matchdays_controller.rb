class MatchdaysController < ApplicationController
  before_action :set_matchday, only: [:show, :edit, :update, :destroy]

  # GET /matchdays
  # GET /matchdays.json
  def index
    @matchdays = Matchday.all
  end

  # GET /matchdays/1
  # GET /matchdays/1.json
  def show
  end

  # GET /matchdays/new
  def new
    @matchday = Matchday.new
  end

  # GET /matchdays/1/edit
  def edit
  end

  # POST /matchdays
  # POST /matchdays.json
  def create
    @matchday = Matchday.new(matchday_params)
    @matchday.goals = 0

    respond_to do |format|
      if @matchday.save
        format.html { redirect_to @matchday, notice: 'Matchday was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matchday }
      else
        format.html { render action: 'new' }
        format.json { render json: @matchday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matchdays/1
  # PATCH/PUT /matchdays/1.json
  def update
    for i in 0..@matchday.matches.size-1
      match = @matchday.matches[i]
      local = match.match_teams[0].team
      match.match_players.each do |match_player|
        local_goals = params.fetch('local_goals_'+i.to_s)
        visit_goals = params.fetch('visit_goals_'+i.to_s)
        if local_goals!='' && visit_goals!=''
          if match_player.player.team == local
            match_player.goals = local_goals.to_i
          else
            match_player.goals = visit_goals.to_i
          end
          match_player.save
          match.play
          match.save
        end
      end
    end
    @matchday.tournament.update_statistics(@matchday.number)

    redirect_to @matchday.tournament, notice: 'Resultados de Fecha ' + @matchday.number.to_s + ' guardados.'
  end

  # DELETE /matchdays/1
  # DELETE /matchdays/1.json
  def destroy
    @matchday.destroy
    respond_to do |format|
      format.html { redirect_to matchdays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matchday
      @matchday = Matchday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matchday_params
      params.require(:matchday).permit(:number, :tournament_id)
    end
end
