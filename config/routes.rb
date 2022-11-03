Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'home/index'
  root 'home#index'
  get 'home/about'

  resources :academic_programs do
  end

  resources :alumnos do
    collection { post :import }
  end
  
  resources :sedes do
  end
  
  resources :universitary_centers do
  end

  resources :student_statuses do
  end


  resources :scholarships do
  end

  resources :subject_types do
  end

  resources :subjects do
  end

  devise_for :users
 
end
