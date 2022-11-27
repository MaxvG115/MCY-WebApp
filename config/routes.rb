Rails.application.routes.draw do
  resources :academic_to_subject_relations
  resources :historical_student_scholarships
  resources :historical_student_statuses
  resources :student_subject_relations
  resources :student_subject_statuses

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'home/index'
  root 'home#index'
  get 'home/about'

  resources :academic_programs do
    collection { post :import }
  end

  resources :alumnos do
    collection { post :import }
  end
  
  resources :sedes do
    collection { post :import }
  end
  
  resources :universitary_centers do
    collection { post :import }
  end

  resources :student_statuses do
    collection { post :import }
  end


  resources :scholarships do
    collection { post :import }
  end

  resources :subject_types do
    collection { post :import }
  end

  resources :subjects do
    collection { post :import }
  end

  resources :subject_statuses do
    collection { post :import }
  end

  devise_for :users
 
end
