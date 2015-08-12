Rails.application.routes.draw do
  resources :contacts, only: [:new, :create] do
    collection do
      get 'contact_form_popout'
      get 'recruitment_form_popout'
      get 'request_appointment_form_popout'
    end
  end
  mount Optimadmin::Engine => "/admin"
  root to: "application#index"
end
Optimadmin::Engine.routes.draw do
  resources :gallery_images, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
  resources :home_page_sections, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
  resources :contacts
  resources :services, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
  resources :testimonials, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
  resources :team_members, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
      get 'edit_images'
      post 'update_image_default'
      post 'update_image_fill'
      post 'update_image_fit'
    end
  end
  resources :frequently_asked_questions, except: [:show] do
    collection do
      post 'order'
    end
    member do
      get 'toggle'
    end
  end
end
