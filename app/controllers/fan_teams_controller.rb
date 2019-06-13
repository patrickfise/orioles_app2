class FanTeamsController < ApplicationController
  def index
    @fan_teams = FanTeam.page(params[:page]).per(10)

    render("fan_team_templates/index.html.erb")
  end

  def show
    @game = Game.new
    @fan_team = FanTeam.find(params.fetch("id_to_display"))

    render("fan_team_templates/show.html.erb")
  end

  def new_form
    @fan_team = FanTeam.new

    render("fan_team_templates/new_form.html.erb")
  end

  def create_row
    @fan_team = FanTeam.new

    @fan_team.user_id = params.fetch("user_id")
    @fan_team.team_id = params.fetch("team_id")

    if @fan_team.valid?
      @fan_team.save

      redirect_back(:fallback_location => "/fan_teams", :notice => "Fan team created successfully.")
    else
      render("fan_team_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_team
    @fan_team = FanTeam.new

    @fan_team.user_id = params.fetch("user_id")
    @fan_team.team_id = params.fetch("team_id")

    if @fan_team.valid?
      @fan_team.save

      redirect_to("/teams/#{@fan_team.team_id}", notice: "FanTeam created successfully.")
    else
      render("fan_team_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_user
    @fan_team = FanTeam.new

    @fan_team.user_id = params.fetch("user_id")
    @fan_team.team_id = params.fetch("team_id")

    if @fan_team.valid?
      @fan_team.save

      redirect_to("/users/#{@fan_team.user_id}", notice: "FanTeam created successfully.")
    else
      render("fan_team_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @fan_team = FanTeam.find(params.fetch("prefill_with_id"))

    render("fan_team_templates/edit_form.html.erb")
  end

  def update_row
    @fan_team = FanTeam.find(params.fetch("id_to_modify"))

    @fan_team.user_id = params.fetch("user_id")
    @fan_team.team_id = params.fetch("team_id")

    if @fan_team.valid?
      @fan_team.save

      redirect_to("/fan_teams/#{@fan_team.id}", :notice => "Fan team updated successfully.")
    else
      render("fan_team_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_team
    @fan_team = FanTeam.find(params.fetch("id_to_remove"))

    @fan_team.destroy

    redirect_to("/teams/#{@fan_team.team_id}", notice: "FanTeam deleted successfully.")
  end

  def destroy_row_from_user
    @fan_team = FanTeam.find(params.fetch("id_to_remove"))

    @fan_team.destroy

    redirect_to("/users/#{@fan_team.user_id}", notice: "FanTeam deleted successfully.")
  end

  def destroy_row
    @fan_team = FanTeam.find(params.fetch("id_to_remove"))

    @fan_team.destroy

    redirect_to("/fan_teams", :notice => "Fan team deleted successfully.")
  end
end
