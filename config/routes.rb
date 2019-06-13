Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "games#index"
  # Routes for the User resource:

  # CREATE
  get("/users/new", { :controller => "users", :action => "new_form" })
  post("/create_user", { :controller => "users", :action => "create_row" })

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  # UPDATE
  get("/users/:prefill_with_id/edit", { :controller => "users", :action => "edit_form" })
  post("/update_user/:id_to_modify", { :controller => "users", :action => "update_row" })

  # DELETE
  get("/delete_user/:id_to_remove", { :controller => "users", :action => "destroy_row" })

  #------------------------------

  # Routes for the Opponent team resource:

  # CREATE
  get("/opponent_teams/new", { :controller => "opponent_teams", :action => "new_form" })
  post("/create_opponent_team", { :controller => "opponent_teams", :action => "create_row" })

  # READ
  get("/opponent_teams", { :controller => "opponent_teams", :action => "index" })
  get("/opponent_teams/:id_to_display", { :controller => "opponent_teams", :action => "show" })

  # UPDATE
  get("/opponent_teams/:prefill_with_id/edit", { :controller => "opponent_teams", :action => "edit_form" })
  post("/update_opponent_team/:id_to_modify", { :controller => "opponent_teams", :action => "update_row" })

  # DELETE
  get("/delete_opponent_team/:id_to_remove", { :controller => "opponent_teams", :action => "destroy_row" })

  #------------------------------

  # Routes for the Fan team resource:

  # CREATE
  get("/fan_teams/new", { :controller => "fan_teams", :action => "new_form" })
  post("/create_fan_team", { :controller => "fan_teams", :action => "create_row" })
  post("/create_fan_team_from_user", { :controller => "fan_teams", :action => "create_row_from_user" })
  post("/create_fan_team_from_team", { :controller => "fan_teams", :action => "create_row_from_team" })

  # READ
  get("/fan_teams", { :controller => "fan_teams", :action => "index" })
  get("/fan_teams/:id_to_display", { :controller => "fan_teams", :action => "show" })

  # UPDATE
  get("/fan_teams/:prefill_with_id/edit", { :controller => "fan_teams", :action => "edit_form" })
  post("/update_fan_team/:id_to_modify", { :controller => "fan_teams", :action => "update_row" })

  # DELETE
  get("/delete_fan_team/:id_to_remove", { :controller => "fan_teams", :action => "destroy_row" })
  get("/delete_fan_team_from_user/:id_to_remove", { :controller => "fan_teams", :action => "destroy_row_from_user" })
  get("/delete_fan_team_from_team/:id_to_remove", { :controller => "fan_teams", :action => "destroy_row_from_team" })

  #------------------------------

  # Routes for the Team resource:

  # CREATE
  get("/teams/new", { :controller => "teams", :action => "new_form" })
  post("/create_team", { :controller => "teams", :action => "create_row" })

  # READ
  get("/teams", { :controller => "teams", :action => "index" })
  get("/teams/:id_to_display", { :controller => "teams", :action => "show" })

  # UPDATE
  get("/teams/:prefill_with_id/edit", { :controller => "teams", :action => "edit_form" })
  post("/update_team/:id_to_modify", { :controller => "teams", :action => "update_row" })

  # DELETE
  get("/delete_team/:id_to_remove", { :controller => "teams", :action => "destroy_row" })

  #------------------------------

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
  post("/create_game_from_opponent_team", { :controller => "games", :action => "create_row_from_opponent_team" })
  post("/create_game_from_fan_team", { :controller => "games", :action => "create_row_from_fan_team" })

  # READ
  get("/games", { :controller => "games", :action => "index" })
  get("/games/:id_to_display", { :controller => "games", :action => "show" })

  # UPDATE
  get("/games/:prefill_with_id/edit", { :controller => "games", :action => "edit_form" })
  post("/update_game/:id_to_modify", { :controller => "games", :action => "update_row" })

  # DELETE
  get("/delete_game/:id_to_remove", { :controller => "games", :action => "destroy_row" })
  get("/delete_game_from_opponent_team/:id_to_remove", { :controller => "games", :action => "destroy_row_from_opponent_team" })
  get("/delete_game_from_fanteam/:id_to_remove", { :controller => "games", :action => "destroy_row_from_fanteam" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
