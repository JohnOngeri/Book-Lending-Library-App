Rails.application.routes.draw do
  resources :books do
    resources :borrowings, only: [:create, :update, :destroy]
  end

  resources :borrowings, except: [:show] do
    member do
      
      get :return_book  # Allow GET request (optional)
    
      patch :return_book  # This correctly maps PATCH /borrowings/:id/return_book to borrowings#return_book
    end
  end 
  

  get '/borrowers/history', to: 'borrowings#borrower_history', as: 'borrower_history'
  get 'borrowings/history', to: 'borrowings#borrower_history'
   get '/borrowings/:id', to: 'borrowings#show'


  root to: 'books#index'
end