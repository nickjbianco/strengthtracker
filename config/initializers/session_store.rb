if Rails.env == "production"
    # This is for deployment link ... API Source
    # Rails.application.config.session_store :cookie_store, key: "_strength_progress_app", domain: ""
else   
    Rails.application.config.session_store :cookie_store, key: "_strength_progress_app"
end 

