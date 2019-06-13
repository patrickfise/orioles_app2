class OpponentTeamsController < ApplicationController
  def index
    @opponent_teams = OpponentTeam.all

    render("opponent_team_templates/index.html.erb")
  end

  def show
    @opponent_team = OpponentTeam.find(params.fetch("id_to_display"))

    render("opponent_team_templates/show.html.erb")
  end

  def new_form
    @opponent_team = OpponentTeam.new

    render("opponent_team_templates/new_form.html.erb")
  end

  def create_row
    @opponent_team = OpponentTeam.new


    if @opponent_team.valid?
      @opponent_team.save

      redirect_back(:fallback_location => "/opponent_teams", :notice => "Opponent team created successfully.")
    else
      render("opponent_team_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @opponent_team = OpponentTeam.find(params.fetch("prefill_with_id"))

    render("opponent_team_templates/edit_form.html.erb")
  end

  def update_row
    @opponent_team = OpponentTeam.find(params.fetch("id_to_modify"))


    if @opponent_team.valid?
      @opponent_team.save

      redirect_to("/opponent_teams/#{@opponent_team.id}", :notice => "Opponent team updated successfully.")
    else
      render("opponent_team_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @opponent_team = OpponentTeam.find(params.fetch("id_to_remove"))

    @opponent_team.destroy

    redirect_to("/opponent_teams", :notice => "Opponent team deleted successfully.")
  end
end
