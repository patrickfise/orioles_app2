class HomeTeamsController < ApplicationController
  def index
    @home_teams = HomeTeam.page(params[:page]).per(10)

    render("home_team_templates/index.html.erb")
  end

  def show
    @home_team = HomeTeam.find(params.fetch("id_to_display"))

    render("home_team_templates/show.html.erb")
  end

  def new_form
    @home_team = HomeTeam.new

    render("home_team_templates/new_form.html.erb")
  end

  def create_row
    @home_team = HomeTeam.new

    @home_team.home_name = params.fetch("home_name")

    if @home_team.valid?
      @home_team.save

      redirect_back(:fallback_location => "/home_teams", :notice => "Home team created successfully.")
    else
      render("home_team_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @home_team = HomeTeam.find(params.fetch("prefill_with_id"))

    render("home_team_templates/edit_form.html.erb")
  end

  def update_row
    @home_team = HomeTeam.find(params.fetch("id_to_modify"))

    @home_team.home_name = params.fetch("home_name")

    if @home_team.valid?
      @home_team.save

      redirect_to("/home_teams/#{@home_team.id}", :notice => "Home team updated successfully.")
    else
      render("home_team_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @home_team = HomeTeam.find(params.fetch("id_to_remove"))

    @home_team.destroy

    redirect_to("/home_teams", :notice => "Home team deleted successfully.")
  end
end
