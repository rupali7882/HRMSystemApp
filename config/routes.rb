Rails.application.routes.draw do
  resources :departments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'welcome#index'
 
  get 'entitlments/index'
  get '/hr' => 'welcome#hr', :as => 'hr_welcome'
  get '/employee' => 'welcome#employee', :as => 'employee_welcome'


  resources :employees
  resources :departments

  resources :entitlements do 
    collection do
       get :leave
       post :apply_leave
       get :request_leave
    end
    member do
      patch :approve_reject
    end
  end
  resources :payroll do
    collection do 
  	post :salcal
    post :search__emp
    end
  end

  resources :settings do
    collection do
    get :profile
    get :hrm_dl
    end
  end

end

