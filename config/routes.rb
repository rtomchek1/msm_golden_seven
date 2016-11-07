Rails.application.routes.draw do
  get("/", {:controller => "directors", :action => "index"})
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/:id", {:controller => "directors", :action => "show_details"})
end
