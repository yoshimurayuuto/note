Rails.application.routes.draw do
  # この記述を変更
  root :to => 'users/registrations#new'

  devise_for :users, controllers: {
    registrations: "users/registrations",
    # この記述を追記
    omniauth_callbacks: "users/omniauth_callbacks"
  }
end