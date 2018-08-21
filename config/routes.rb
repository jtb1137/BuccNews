Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    put 'like', to: 'posts#upvote'
    put 'dislike', to: 'posts#downvote'
  end
  root 'posts#index'
end
