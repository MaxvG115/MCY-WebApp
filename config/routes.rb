Rails.application.routes.draw do
  resources :academic_programs
  resources :academic_to_subject_relations
  resources :historical_student_scholarships
  resources :historical_student_statuses
  resources :scholarships
  resources :sedes
  resources :student_statuses
  resources :student_subject_relations
  resources :student_subject_statuses
  resources :subject_statuses
  resources :universitary_centers
  resources :subject_types
  resources :subjects
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
