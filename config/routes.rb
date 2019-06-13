Rails.application.routes.draw do
  # Routes for the Home team resource:

  # CREATE
  get("/home_teams/new", { :controller => "home_teams", :action => "new_form" })
  post("/create_home_team", { :controller => "home_teams", :action => "create_row" })

  # READ
  get("/home_teams", { :controller => "home_teams", :action => "index" })
  get("/home_teams/:id_to_display", { :controller => "home_teams", :action => "show" })

  # UPDATE
  get("/home_teams/:prefill_with_id/edit", { :controller => "home_teams", :action => "edit_form" })
  post("/update_home_team/:id_to_modify", { :controller => "home_teams", :action => "update_row" })

  # DELETE
  get("/delete_home_team/:id_to_remove", { :controller => "home_teams", :action => "destroy_row" })

  #------------------------------

  # Routes for the Game resource:

  # CREATE
  get("/games/new", { :controller => "games", :action => "new_form" })
  post("/create_game", { :controller => "games", :action => "create_row" })

  # READ
  get("/games", { :controller => "games", :action => "index" })
  get("/games/:id_to_display", { :controller => "games", :action => "show" })

  # UPDATE
  get("/games/:prefill_with_id/edit", { :controller => "games", :action => "edit_form" })
  post("/update_game/:id_to_modify", { :controller => "games", :action => "update_row" })

  # DELETE
  get("/delete_game/:id_to_remove", { :controller => "games", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
