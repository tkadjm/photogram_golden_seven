Rails.application.routes.draw do

  # Index
  get("/",                      { :controller => "photos", :action => "index"    })

  # Create
  get("/photos/new",            { :controller => "photos", :action => "new_form"    })
  get("/photos/create_photo",   { :controller => "photos", :action => "create_row"  })

  # Update
  get("/photos/:id/edit",       { :controller => "photos", :action => "edit_form"   })
  get("/update_photo/:id",      { :controller => "photos", :action => "update_row"  })

  # Routes to READ photos
  get("/photos",                { :controller => "photos", :action => "index"       })
  get("/photos/:id",            { :controller => "photos", :action => "show"        })

  # Delete
  get("/delete_photo/:id",      { :controller => "photos", :action => "destroy"     })


end
