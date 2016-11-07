Rails.application.routes.draw do
  get("/", {:controller => "directors", :action => "index"})

  get("/directors", {:controller => "directors", :action => "index"})
  get("directors/add", {:controller => "directors", :action => "add_new"})
  get("directors/add_row", {:controller => "directors", :action => "add_row"})
  get("/directors/:id", {:controller => "directors", :action => "show_details"})
  get("/directors/:id/edit", {:controller => "directors", :action => "edit"})
  get("/directors/update/:id", {:controller => "directors", :action => "update_director"})
  get("/directors/:id/delete", {:controller => "directors", :action => "delete_director"})

  get("/movies", {:controller => "movies", :action => "index"})
  get("movies/add", {:controller => "movies", :action => "add_new"})
  get("movies/add_row", {:controller => "movies", :action => "add_row"})
  get("/movies/:id", {:controller => "movies", :action => "show_details"})
  get("/movies/:id/edit", {:controller => "movies", :action => "edit"})
  get("/movies/update/:id", {:controller => "movies", :action => "update_movie"})
  get("/movies/:id/delete", {:controller => "movies", :action => "delete_movie"})

  get("/actors", {:controller => "actors", :action => "index"})
  get("actors/add", {:controller => "actors", :action => "add_new"})
  get("actors/add_row", {:controller => "actors", :action => "add_row"})
  get("/actors/:id", {:controller => "actors", :action => "show_details"})
  get("/actors/:id/edit", {:controller => "actors", :action => "edit"})
  get("/actors/update/:id", {:controller => "actors", :action => "update_actor"})
  get("/actors/:id/delete", {:controller => "actors", :action => "delete_actor"})
end
