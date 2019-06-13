class GamesController < ApplicationController
  def index
    @games = Game.page(params[:page]).per(10)

    render("game_templates/index.html.erb")
  end

  def show
    @game = Game.find(params.fetch("id_to_display"))

    render("game_templates/show.html.erb")
  end

  def new_form
    @game = Game.new

    render("game_templates/new_form.html.erb")
  end

  def create_row
    @game = Game.new

    @game.home_name = params.fetch("home_name")
    @game.away_name = params.fetch("away_name")
    @game.time = params.fetch("time")
    @game.date = params.fetch("date")
    @game.fanteam_id = params.fetch("fanteam_id")
    @game.opponent_team_id = params.fetch("opponent_team_id")

    if @game.valid?
      @game.save

      redirect_back(:fallback_location => "/games", :notice => "Game created successfully.")
    else
      render("game_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_fan_team
    @game = Game.new

    @game.home_name = params.fetch("home_name")
    @game.away_name = params.fetch("away_name")
    @game.time = params.fetch("time")
    @game.date = params.fetch("date")
    @game.fanteam_id = params.fetch("fanteam_id")
    @game.opponent_team_id = params.fetch("opponent_team_id")

    if @game.valid?
      @game.save

      redirect_to("/fan_teams/#{@game.fanteam_id}", notice: "Game created successfully.")
    else
      render("game_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_opponent_team
    @game = Game.new

    @game.home_name = params.fetch("home_name")
    @game.away_name = params.fetch("away_name")
    @game.time = params.fetch("time")
    @game.date = params.fetch("date")
    @game.fanteam_id = params.fetch("fanteam_id")
    @game.opponent_team_id = params.fetch("opponent_team_id")

    if @game.valid?
      @game.save

      redirect_to("/opponent_teams/#{@game.opponent_team_id}", notice: "Game created successfully.")
    else
      render("game_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @game = Game.find(params.fetch("prefill_with_id"))

    render("game_templates/edit_form.html.erb")
  end

  def update_row
    @game = Game.find(params.fetch("id_to_modify"))

    @game.home_name = params.fetch("home_name")
    @game.away_name = params.fetch("away_name")
    @game.time = params.fetch("time")
    @game.date = params.fetch("date")
    @game.fanteam_id = params.fetch("fanteam_id")
    @game.opponent_team_id = params.fetch("opponent_team_id")

    if @game.valid?
      @game.save

      redirect_to("/games/#{@game.id}", :notice => "Game updated successfully.")
    else
      render("game_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_fanteam
    @game = Game.find(params.fetch("id_to_remove"))

    @game.destroy

    redirect_to("/fan_teams/#{@game.fanteam_id}", notice: "Game deleted successfully.")
  end

  def destroy_row_from_opponent_team
    @game = Game.find(params.fetch("id_to_remove"))

    @game.destroy

    redirect_to("/opponent_teams/#{@game.opponent_team_id}", notice: "Game deleted successfully.")
  end

  def destroy_row
    @game = Game.find(params.fetch("id_to_remove"))

    @game.destroy

    redirect_to("/games", :notice => "Game deleted successfully.")
  end
end
