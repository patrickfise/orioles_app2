Rails.application.routes.draw do
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
