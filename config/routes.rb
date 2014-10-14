Tugas4::Application.routes.draw do
  devise_for :users
  resources :tosmics do
    member do
      put "like", to: "tosmics#upvote"
    end
  end
  
  root "tosmics#index"
end
